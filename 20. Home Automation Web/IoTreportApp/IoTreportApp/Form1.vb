
Imports System.IO
Imports System.IO.Ports


Public Class Form1
    Dim count As Integer = 0
    Dim path As String = Directory.GetCurrentDirectory()

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
        'send.Enabled = False
        Timer1.Enabled = False
        File.Create(path + "\data.txt").Dispose()
        'write2server()
    End Sub

    Private Sub refrsh_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles refrsh.Click, refrsh.Click
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        portlist.Items.Clear()

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
    End Sub

    Private Sub connect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles connect.Click

        Dim read As String = ""

        If connect.Text Is "Disconnect" Then
            If SerialPort1.IsOpen = True Then SerialPort1.Close()
            connect.Text = "Connect"
            status.Text = "Disconnected successfully."
            Timer1.Stop()
            Timer1.Enabled = False
            send.Text = "Send to server"
            send.Enabled = False
            GoTo over
        End If

        Try
            SerialPort1.PortName = portlist.SelectedItem.ToString
            SerialPort1.BaudRate = 9600
            SerialPort1.StopBits = 1
            SerialPort1.Parity = Parity.None
            SerialPort1.Handshake = Handshake.None
            SerialPort1.DataBits = 8
            SerialPort1.ReadTimeout = 1000
            SerialPort1.WriteTimeout = 1000

            SerialPort1.Open()

            connect.Text = "Disconnect"
            send.Enabled = True
            status.Text = "Connected successfully."

        Catch ex As Exception
            MsgBox("Error: " + ex.Message)
        End Try
over:
    End Sub

    Private Sub send_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles send.Click

        If send.Text Is "Stop" Then
            Timer1.Stop()
            Timer1.Enabled = False
            send.Text = "Send to server"
            status.Text = "Send data to server is cancelled."
            GoTo over
        End If

        Timer1.Enabled = True
        Timer1.Start()

        write2server()
        send.Text = "Stop"
over:
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        write2server()
    End Sub

    Sub write2server()
        Try
            Dim mReq As System.Net.FtpWebRequest = DirectCast(System.Net.WebRequest.Create("ftp://ftp.epizy.com/htdocs/data.txt"),
            System.Net.FtpWebRequest)

            mReq.Credentials = New System.Net.NetworkCredential("epiz_20213927", "JEmYInmN")
            mReq.Method = System.Net.WebRequestMethods.Ftp.UploadFile

            Dim mFile() As Byte = System.IO.File.ReadAllBytes(path + "\data.txt")

            Dim mStream As System.IO.Stream = mReq.GetRequestStream()
            mStream.Write(mFile, 0, mFile.Length)

            mStream.Close()
            mStream.Dispose()

            status.Text = "Last update: " + DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")

        Catch ex As Exception
            status.Text = "Error: " + ex.Message
        End Try
    End Sub

    Delegate Sub AddText(ByVal Text As String)
    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Dim file As System.IO.StreamWriter
        Dim sound_int As Integer
        Dim smoke_int As Integer
        Dim temp_int As Integer

        file = My.Computer.FileSystem.OpenTextFileWriter(path + "\data.txt", False)
        Try
            Temp_value.Clear()
            Temp_value.Text = SerialPort1.ReadLine
            temp_int = CInt(Temp_value.Text)
            If temp_int > 28 Then
                Temp_con.Text = "Hot."
            ElseIf temp_int <= 28 Then
                Temp_con.Text = "Cool."
            End If
            file.WriteLine(Temp_value.Text)

            smoke_value.Clear()
            smoke_value.Text = SerialPort1.ReadLine
            smoke_int = CInt(smoke_value.Text)
            If smoke_int <= 35 Then
                smoke_con.Text = "GOOD."
            Else
                smoke_con.Text = "Unhealthy!!"
            End If
            file.WriteLine(smoke_value.Text)

            sound_value.Clear()
            sound_value.Text = SerialPort1.ReadLine
            sound_int = CInt(sound_value.Text)
            If sound_int = 1 Then
                sound_value.Text = "Noise Detected."
            Else
                sound_value.Text = "NONE."
            End If
            file.WriteLine(sound_value.Text)

            file.WriteLine("Last update: " + Date.Now.ToString("HH:mm:ss dd/MM/yy"))

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        file.Close()
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        WebBrowser1.Navigate("http://homeautomation.epizy.com/relay.php")
        Try
            Dim text As String = WebBrowser1.Document.GetElementById("relay").InnerText
            Dim relay1 As Char = text(1)
            Dim relay2 As Char = text(2)
            Dim relay3 As Char = text(3)
            Dim relay4 As Char = text(4)

            If relay1 = "0" Then
                rly1.BackColor = Color.White
            Else
                rly1.BackColor = Color.Green
            End If
            If relay2 = "0" Then
                rly2.BackColor = Color.White
            Else
                rly2.BackColor = Color.Green
            End If
            If relay3 = "0" Then
                rly3.BackColor = Color.White
            Else
                rly3.BackColor = Color.Green
            End If
            If relay4 = "0" Then
                rly4.BackColor = Color.White
            Else
                rly4.BackColor = Color.Green
            End If
            SerialPort1.Write(text)
        Catch
        End Try
    End Sub
End Class

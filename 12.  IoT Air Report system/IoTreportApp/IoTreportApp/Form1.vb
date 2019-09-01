
Imports System
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
        send.Enabled = False
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
        Timer1.Interval = 1000
        count += 1
        If count = 5 Then
            count = 0
            write2server()
        End If
    End Sub

    Sub write2server()
        Try
            Dim mReq As System.Net.FtpWebRequest = DirectCast(System.Net.WebRequest.Create("ftp://ftp.epizy.com/htdocs/data.txt"),
            System.Net.FtpWebRequest)

            mReq.Credentials = New System.Net.NetworkCredential("epiz_20144170", "s3m2v5ih")
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
        Dim dust_int As Integer
        Dim MQ6_int As Integer
        Dim MQ135_int As Integer

        file = My.Computer.FileSystem.OpenTextFileWriter(path + "\data.txt", False)
        Try
            sound_value.Clear()
            sound_value.Text = SerialPort1.ReadLine
            sound_int = CInt(sound_value.Text)
            If sound_int = 0 Then
                sound_value.Text = "Noise Detected."
            Else
                sound_value.Text = "NONE."
            End If
            file.WriteLine(sound_value.Text)

            dust_value.Clear()
            dust_value.Text = SerialPort1.ReadLine
            dust_int = CInt(dust_value.Text)
            If dust_int >= 240 Then
                dust_con.Text = "GOOD."
            ElseIf dust_int <= 35 Then
                dust_con.Text = "Unhealthy!!"
            End If
            file.WriteLine(dust_value.Text)

            smoke_value.Clear()
            smoke_value.Text = SerialPort1.ReadLine
            smoke_int = CInt(smoke_value.Text)
            If smoke_int <= 35 Then
                smoke_con.Text = "GOOD."
            Else
                smoke_con.Text = "Unhealthy!!"
            End If
            file.WriteLine(smoke_value.Text)

            MQ6_value.Clear()
            MQ6_value.Text = SerialPort1.ReadLine
            MQ6_int = CInt(MQ6_value.Text)
            If MQ6_int <= 35 Then
                MQ6_con.Text = "GOOD."
            Else
                MQ6_con.Text = "Unhealthy!!"
            End If
            file.WriteLine(MQ6_value.Text)

            MQ135_value.Clear()
            MQ135_value.Text = SerialPort1.ReadLine
            MQ135_int = CInt(MQ135_value.Text)
            If MQ135_int <= 35 Then
                MQ135_con.Text = "GOOD."
            Else
                MQ135_con.Text = "Unhealthy!!"
            End If
            file.WriteLine(MQ135_value.Text)

            file.WriteLine("Last update: " + Date.Now.ToString("HH:mm:ss dd/MM/yy"))

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        file.Close()
    End Sub
End Class

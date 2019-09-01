Imports System
Imports System.IO
Imports System.IO.Ports

Public Class Form1
    Dim path As String = Directory.GetCurrentDirectory()
    Dim digit As Long = 0

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
        fontsize.Text = "10"
        speed.Text = "20"
        RichTextBox1.BackColor = Color.Black
        RichTextBox1.ForeColor = Color.Yellow
    End Sub

    Private Sub connect_Click(sender As Object, e As EventArgs) Handles connect.Click
        Dim read As String = ""

        If connect.Text Is "Disconnect" Then
            If SerialPort1.IsOpen = True Then SerialPort1.Close()
            connect.Text = "Connect"
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

        Catch ex As Exception
            MsgBox("Error: " + ex.Message)
        End Try
over:
    End Sub

    Private Sub refresh_Click(sender As Object, e As EventArgs) Handles refresh.Click
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        portlist.Items.Clear()

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ColorDialog1.ShowDialog()
        RichTextBox1.BackColor = ColorDialog1.Color
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ColorDialog1.ShowDialog()
        RichTextBox1.ForeColor = ColorDialog1.Color
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        RichTextBox1.SelectionStart = digit
        digit = digit + 1
    End Sub

    Private Sub fontsize_LostFocus(sender As Object, e As EventArgs) Handles fontsize.LostFocus
        Dim size As Int32
        If fontsize.Text = "" Then
            size = 10
        Else
            size = CInt(fontsize.Text)
        End If
        RichTextBox1.Font = New Font(RichTextBox1.Font.Name, size, FontStyle.Regular)
        digit = 0
        RichTextBox1.Focus()
    End Sub

    Private Sub speed_LostFocus(sender As Object, e As EventArgs) Handles speed.LostFocus
        If speed.Text = "" Then
            Timer1.Interval = 20
        Else
            Timer1.Interval = CInt(speed.Text)
        End If
        digit = 0
        RichTextBox1.Focus()
    End Sub

    Private Sub SerialPort1_DataReceived(sender As Object, e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Dim data As String
        Dim number As Integer
        data = SerialPort1.ReadLine
        number = CInt(data)

        Try
            If number = 1 Then
                RichTextBox1.LoadFile("docs\msg (1).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 2 Then
                RichTextBox1.LoadFile("docs\msg (2).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 3 Then
                RichTextBox1.LoadFile("docs\msg (3).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 4 Then
                RichTextBox1.LoadFile("docs\msg (4).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 5 Then
                RichTextBox1.LoadFile("docs\msg (5).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 6 Then
                RichTextBox1.LoadFile("docs\msg (6).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 7 Then
                RichTextBox1.LoadFile("docs\msg (7).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 8 Then
                RichTextBox1.LoadFile("docs\msg (8).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 9 Then
                RichTextBox1.LoadFile("docs\msg (9).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 10 Then
                RichTextBox1.LoadFile("docs\msg (10).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 11 Then
                RichTextBox1.LoadFile("docs\msg (11).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 12 Then
                RichTextBox1.LoadFile("docs\msg (12).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 13 Then
                RichTextBox1.LoadFile("docs\msg (13).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 14 Then
                RichTextBox1.LoadFile("docs\msg (14).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 15 Then
                RichTextBox1.LoadFile("docs\msg (15).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 16 Then
                RichTextBox1.LoadFile("docs\msg (16).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 17 Then
                RichTextBox1.LoadFile("docs\msg (17).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 18 Then
                RichTextBox1.LoadFile("docs\msg (18).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 19 Then
                RichTextBox1.LoadFile("docs\msg (19).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 20 Then
                RichTextBox1.LoadFile("docs\msg (20).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 21 Then
                RichTextBox1.LoadFile("docs\msg (21).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 22 Then
                RichTextBox1.LoadFile("docs\msg (22).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 23 Then
                RichTextBox1.LoadFile("docs\msg (23).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 24 Then
                RichTextBox1.LoadFile("docs\msg (24).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 25 Then
                RichTextBox1.LoadFile("docs\msg (25).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 26 Then
                RichTextBox1.LoadFile("docs\msg (26).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 27 Then
                RichTextBox1.LoadFile("docs\msg (27).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 28 Then
                RichTextBox1.LoadFile("docs\msg (28).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 29 Then
                RichTextBox1.LoadFile("docs\msg (29).rtf", RichTextBoxStreamType.RichText)
            ElseIf number = 30 Then
                RichTextBox1.LoadFile("docs\msg (30).rtf", RichTextBoxStreamType.RichText)
            End If
        Catch ex As Exception
            MsgBox("Error: " + ex.Message)
        End Try
    End Sub

    Private Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        RichTextBox1.Clear()
    End Sub
End Class

Imports System
Imports System.IO
Imports System.IO.Ports

Public Class Form1

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        clap.Enabled = False
        guitar.Enabled = False
        hats.Enabled = False
        kick.Enabled = False
        percussion.Enabled = False
        piano.Enabled = False
        snare.Enabled = False
        toms.Enabled = False
        clap.BackColor = Color.Green

        System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
    End Sub

    Private Sub play_tone(music As Byte)
        change_color(music)
        If clap.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.C1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.C2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.C3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.C4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.C5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.C6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.C7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.C8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.C9, AudioPlayMode.Background)
            End Select
        ElseIf guitar.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.G1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.G2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.G3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.G4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.G5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.G6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.G7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.G8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.G9, AudioPlayMode.Background)
            End Select
        ElseIf hats.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.H1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.H2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.H3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.H4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.H5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.H6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.H7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.H8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.H9, AudioPlayMode.Background)
            End Select
        ElseIf kick.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.K1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.K2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.K3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.K4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.K5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.K6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.K7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.K8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.K9, AudioPlayMode.Background)
            End Select
        ElseIf percussion.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.PC1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.PC2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.PC3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.PC4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.PC5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.PC6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.PC7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.PC8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.PC9, AudioPlayMode.Background)
            End Select
        ElseIf piano.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.P1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.P2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.P3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.P4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.P5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.P6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.P7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.P8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.P9, AudioPlayMode.Background)
            End Select
        ElseIf snare.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.S1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.S2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.S3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.S4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.S5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.S6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.S7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.S8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.S9, AudioPlayMode.Background)
            End Select
        ElseIf toms.BackColor = Color.Green Then
            Select Case music
                Case 1
                    My.Computer.Audio.Play(My.Resources.T1, AudioPlayMode.Background)
                Case 2
                    My.Computer.Audio.Play(My.Resources.T2, AudioPlayMode.Background)
                Case 3
                    My.Computer.Audio.Play(My.Resources.T3, AudioPlayMode.Background)
                Case 4
                    My.Computer.Audio.Play(My.Resources.T4, AudioPlayMode.Background)
                Case 5
                    My.Computer.Audio.Play(My.Resources.T5, AudioPlayMode.Background)
                Case 6
                    My.Computer.Audio.Play(My.Resources.T6, AudioPlayMode.Background)
                Case 7
                    My.Computer.Audio.Play(My.Resources.T7, AudioPlayMode.Background)
                Case 8
                    My.Computer.Audio.Play(My.Resources.T8, AudioPlayMode.Background)
                Case 9
                    My.Computer.Audio.Play(My.Resources.T9, AudioPlayMode.Background)
            End Select
        End If

    End Sub

    Private Sub change_color(ch As Byte)
        Timer1.Interval = 300
        Select Case ch
            Case 1
                ch1.Image = My.Resources.r_circle
            Case 2
                ch2.Image = My.Resources.r_circle
            Case 3
                ch3.Image = My.Resources.r_circle
            Case 4
                ch4.Image = My.Resources.r_circle
            Case 5
                ch5.Image = My.Resources.r_circle
            Case 6
                ch6.Image = My.Resources.r_circle
            Case 7
                ch7.Image = My.Resources.r_circle
            Case 8
                ch8.Image = My.Resources.r_circle
            Case 9
                ch9.Image = My.Resources.r_circle
        End Select
        Timer1.Start()
    End Sub

    Private Sub ch1_Click(sender As Object, e As EventArgs) Handles ch1.Click
        play_tone(1)
    End Sub

    Private Sub ch2_Click(sender As Object, e As EventArgs) Handles ch2.Click
        play_tone(2)
    End Sub

    Private Sub ch3_Click(sender As Object, e As EventArgs) Handles ch3.Click
        play_tone(3)
    End Sub

    Private Sub ch4_Click(sender As Object, e As EventArgs) Handles ch4.Click
        play_tone(4)
    End Sub

    Private Sub ch5_Click(sender As Object, e As EventArgs) Handles ch5.Click
        play_tone(5)
    End Sub

    Private Sub ch6_Click(sender As Object, e As EventArgs) Handles ch6.Click
        play_tone(6)
    End Sub

    Private Sub ch7_Click(sender As Object, e As EventArgs) Handles ch7.Click
        play_tone(7)
    End Sub

    Private Sub ch8_Click(sender As Object, e As EventArgs) Handles ch8.Click
        play_tone(8)
    End Sub

    Private Sub ch9_Click(sender As Object, e As EventArgs) Handles ch9.Click
        play_tone(9)
    End Sub

    Private Sub Form1_KeyDown(sender As Object, e As KeyEventArgs) Handles Me.KeyDown
        Select Case e.KeyCode
            Case Keys.A
                play_tone(1)
            Case Keys.S
                play_tone(2)
            Case Keys.D
                play_tone(3)
            Case Keys.F
                play_tone(4)
            Case Keys.G
                play_tone(5)
            Case Keys.W
                play_tone(6)
            Case Keys.E
                play_tone(7)
            Case Keys.R
                play_tone(8)
            Case Keys.T
                play_tone(9)
        End Select

    End Sub

    Private Sub empty_circle()
        ch1.Image = My.Resources.e_circle
        ch2.Image = My.Resources.e_circle
        ch3.Image = My.Resources.e_circle
        ch4.Image = My.Resources.e_circle
        ch5.Image = My.Resources.e_circle
        ch6.Image = My.Resources.e_circle
        ch7.Image = My.Resources.e_circle
        ch8.Image = My.Resources.e_circle
        ch9.Image = My.Resources.e_circle
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        empty_circle()
    End Sub

    Private Sub connect_Click(sender As Object, e As EventArgs) Handles connect.Click
        Dim read As String = ""

        If connect.Text Is "Disconnect" Then
            If SerialPort1.IsOpen = True Then SerialPort1.Close()
            connect.Text = "Connect"
            status.Text = "Disconnected"
            GoTo over
        End If

        Try
            SerialPort1.PortName = portlist.SelectedItem.ToString
            SerialPort1.BaudRate = 9600
            SerialPort1.StopBits = 1
            SerialPort1.Parity = Parity.None
            SerialPort1.Handshake = Handshake.None
            SerialPort1.DataBits = 8
            SerialPort1.ReadTimeout = 5000
            SerialPort1.WriteTimeout = 5000

            SerialPort1.Open()

            connect.Text = "Disconnect"
            status.Text = "Connected"

            Do
                read = SerialPort1.ReadLine()
                If read = "AT" Then
                    SerialPort1.WriteLine("OK" + vbLf)
                    Exit Do
                End If
            Loop

        Catch ex As Exception
            MsgBox("Error: " + ex.Message)
        End Try
over:
    End Sub

    Private Sub select_music(music As Byte)
        clap.BackColor = Color.White
        guitar.BackColor = Color.White
        hats.BackColor = Color.White
        kick.BackColor = Color.White
        percussion.BackColor = Color.White
        piano.BackColor = Color.White
        snare.BackColor = Color.White
        toms.BackColor = Color.White

        Select Case music
            Case 1
                clap.BackColor = Color.Green
            Case 2
                guitar.BackColor = Color.Green
            Case 3
                hats.BackColor = Color.Green
            Case 4
                kick.BackColor = Color.Green
            Case 5
                percussion.BackColor = Color.Green
            Case 6
                piano.BackColor = Color.Green
            Case 7
                snare.BackColor = Color.Green
            Case 8
                toms.BackColor = Color.Green
        End Select
    End Sub

    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Dim rxd As String
        Dim music As String
        Dim rxd_int As Byte
        Dim music_int As Byte

        Timer1_Tick(Timer1, EventArgs.Empty)

        Try
            rxd = SerialPort1.ReadLine
            music = SerialPort1.ReadLine
            rxd_int = Convert.ToByte(rxd)
            music_int = Convert.ToByte(music)

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        select_music(music_int)
        play_tone(rxd_int)
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
End Class

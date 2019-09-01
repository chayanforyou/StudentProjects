<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.portlist = New System.Windows.Forms.ComboBox()
        Me.connect = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.clap = New System.Windows.Forms.Button()
        Me.guitar = New System.Windows.Forms.Button()
        Me.hats = New System.Windows.Forms.Button()
        Me.kick = New System.Windows.Forms.Button()
        Me.percussion = New System.Windows.Forms.Button()
        Me.piano = New System.Windows.Forms.Button()
        Me.snare = New System.Windows.Forms.Button()
        Me.toms = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Label3 = New System.Windows.Forms.Label()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.status = New System.Windows.Forms.Label()
        Me.refresh = New System.Windows.Forms.Button()
        Me.ch9 = New System.Windows.Forms.PictureBox()
        Me.ch8 = New System.Windows.Forms.PictureBox()
        Me.ch7 = New System.Windows.Forms.PictureBox()
        Me.ch6 = New System.Windows.Forms.PictureBox()
        Me.ch5 = New System.Windows.Forms.PictureBox()
        Me.ch4 = New System.Windows.Forms.PictureBox()
        Me.ch3 = New System.Windows.Forms.PictureBox()
        Me.ch2 = New System.Windows.Forms.PictureBox()
        Me.ch1 = New System.Windows.Forms.PictureBox()
        CType(Me.ch9, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch8, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch7, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch6, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch5, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ch1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial", 21.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(415, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(387, 34)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "MIDI Player using Picmicro"
        '
        'portlist
        '
        Me.portlist.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.portlist.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.portlist.Location = New System.Drawing.Point(115, 14)
        Me.portlist.Name = "portlist"
        Me.portlist.Size = New System.Drawing.Size(61, 24)
        Me.portlist.TabIndex = 1
        '
        'connect
        '
        Me.connect.Location = New System.Drawing.Point(286, 11)
        Me.connect.Name = "connect"
        Me.connect.Size = New System.Drawing.Size(123, 32)
        Me.connect.TabIndex = 2
        Me.connect.Text = "Connect"
        Me.connect.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(12, 14)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(97, 24)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "COM Port:"
        '
        'clap
        '
        Me.clap.BackColor = System.Drawing.Color.White
        Me.clap.Location = New System.Drawing.Point(16, 70)
        Me.clap.Name = "clap"
        Me.clap.Size = New System.Drawing.Size(93, 51)
        Me.clap.TabIndex = 4
        Me.clap.Text = "Clap"
        Me.clap.UseVisualStyleBackColor = False
        '
        'guitar
        '
        Me.guitar.BackColor = System.Drawing.Color.White
        Me.guitar.Location = New System.Drawing.Point(115, 70)
        Me.guitar.Name = "guitar"
        Me.guitar.Size = New System.Drawing.Size(93, 51)
        Me.guitar.TabIndex = 5
        Me.guitar.Text = "Guitar"
        Me.guitar.UseVisualStyleBackColor = False
        '
        'hats
        '
        Me.hats.BackColor = System.Drawing.Color.White
        Me.hats.Location = New System.Drawing.Point(214, 70)
        Me.hats.Name = "hats"
        Me.hats.Size = New System.Drawing.Size(93, 51)
        Me.hats.TabIndex = 6
        Me.hats.Text = "Hats"
        Me.hats.UseVisualStyleBackColor = False
        '
        'kick
        '
        Me.kick.BackColor = System.Drawing.Color.White
        Me.kick.Location = New System.Drawing.Point(313, 70)
        Me.kick.Name = "kick"
        Me.kick.Size = New System.Drawing.Size(93, 51)
        Me.kick.TabIndex = 7
        Me.kick.Text = "Kick"
        Me.kick.UseVisualStyleBackColor = False
        '
        'percussion
        '
        Me.percussion.BackColor = System.Drawing.Color.White
        Me.percussion.Location = New System.Drawing.Point(412, 70)
        Me.percussion.Name = "percussion"
        Me.percussion.Size = New System.Drawing.Size(93, 51)
        Me.percussion.TabIndex = 8
        Me.percussion.Text = "Cussion"
        Me.percussion.UseVisualStyleBackColor = False
        '
        'piano
        '
        Me.piano.BackColor = System.Drawing.Color.White
        Me.piano.Location = New System.Drawing.Point(511, 70)
        Me.piano.Name = "piano"
        Me.piano.Size = New System.Drawing.Size(93, 51)
        Me.piano.TabIndex = 9
        Me.piano.Text = "Piano"
        Me.piano.UseVisualStyleBackColor = False
        '
        'snare
        '
        Me.snare.BackColor = System.Drawing.Color.White
        Me.snare.Location = New System.Drawing.Point(610, 70)
        Me.snare.Name = "snare"
        Me.snare.Size = New System.Drawing.Size(93, 51)
        Me.snare.TabIndex = 10
        Me.snare.Text = "Snare"
        Me.snare.UseVisualStyleBackColor = False
        '
        'toms
        '
        Me.toms.BackColor = System.Drawing.Color.White
        Me.toms.Location = New System.Drawing.Point(709, 70)
        Me.toms.Name = "toms"
        Me.toms.Size = New System.Drawing.Size(93, 51)
        Me.toms.TabIndex = 11
        Me.toms.Text = "Toms"
        Me.toms.UseVisualStyleBackColor = False
        '
        'Timer1
        '
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(182, 219)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(620, 16)
        Me.Label3.TabIndex = 21
        Me.Label3.Text = "Note: you can play a tone by clicking on any channel or pressing A,S,D,F,G,W,E,R," &
    "T key from keyboard."
        '
        'SerialPort1
        '
        '
        'status
        '
        Me.status.AutoSize = True
        Me.status.Location = New System.Drawing.Point(12, 213)
        Me.status.Name = "status"
        Me.status.Size = New System.Drawing.Size(0, 24)
        Me.status.TabIndex = 22
        '
        'refresh
        '
        Me.refresh.Location = New System.Drawing.Point(185, 11)
        Me.refresh.Name = "refresh"
        Me.refresh.Size = New System.Drawing.Size(95, 32)
        Me.refresh.TabIndex = 23
        Me.refresh.Text = "Refresh"
        Me.refresh.UseVisualStyleBackColor = True
        '
        'ch9
        '
        Me.ch9.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch9.Location = New System.Drawing.Point(644, 139)
        Me.ch9.Name = "ch9"
        Me.ch9.Size = New System.Drawing.Size(60, 60)
        Me.ch9.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch9.TabIndex = 20
        Me.ch9.TabStop = False
        '
        'ch8
        '
        Me.ch8.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch8.Location = New System.Drawing.Point(578, 139)
        Me.ch8.Name = "ch8"
        Me.ch8.Size = New System.Drawing.Size(60, 60)
        Me.ch8.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch8.TabIndex = 19
        Me.ch8.TabStop = False
        '
        'ch7
        '
        Me.ch7.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch7.Location = New System.Drawing.Point(512, 139)
        Me.ch7.Name = "ch7"
        Me.ch7.Size = New System.Drawing.Size(60, 60)
        Me.ch7.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch7.TabIndex = 18
        Me.ch7.TabStop = False
        '
        'ch6
        '
        Me.ch6.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch6.Location = New System.Drawing.Point(446, 139)
        Me.ch6.Name = "ch6"
        Me.ch6.Size = New System.Drawing.Size(60, 60)
        Me.ch6.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch6.TabIndex = 17
        Me.ch6.TabStop = False
        '
        'ch5
        '
        Me.ch5.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch5.Location = New System.Drawing.Point(380, 139)
        Me.ch5.Name = "ch5"
        Me.ch5.Size = New System.Drawing.Size(60, 60)
        Me.ch5.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch5.TabIndex = 16
        Me.ch5.TabStop = False
        '
        'ch4
        '
        Me.ch4.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch4.Location = New System.Drawing.Point(314, 139)
        Me.ch4.Name = "ch4"
        Me.ch4.Size = New System.Drawing.Size(60, 60)
        Me.ch4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch4.TabIndex = 15
        Me.ch4.TabStop = False
        '
        'ch3
        '
        Me.ch3.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch3.Location = New System.Drawing.Point(248, 139)
        Me.ch3.Name = "ch3"
        Me.ch3.Size = New System.Drawing.Size(60, 60)
        Me.ch3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch3.TabIndex = 14
        Me.ch3.TabStop = False
        '
        'ch2
        '
        Me.ch2.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch2.Location = New System.Drawing.Point(182, 139)
        Me.ch2.Name = "ch2"
        Me.ch2.Size = New System.Drawing.Size(60, 60)
        Me.ch2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch2.TabIndex = 13
        Me.ch2.TabStop = False
        '
        'ch1
        '
        Me.ch1.Image = Global.MIDI_Generator_Using_Picmicro.My.Resources.Resources.e_circle
        Me.ch1.Location = New System.Drawing.Point(116, 139)
        Me.ch1.Name = "ch1"
        Me.ch1.Size = New System.Drawing.Size(60, 60)
        Me.ch1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.ch1.TabIndex = 12
        Me.ch1.TabStop = False
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(11.0!, 24.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(818, 244)
        Me.Controls.Add(Me.refresh)
        Me.Controls.Add(Me.status)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.ch9)
        Me.Controls.Add(Me.ch8)
        Me.Controls.Add(Me.ch7)
        Me.Controls.Add(Me.ch6)
        Me.Controls.Add(Me.ch5)
        Me.Controls.Add(Me.ch4)
        Me.Controls.Add(Me.ch3)
        Me.Controls.Add(Me.ch2)
        Me.Controls.Add(Me.ch1)
        Me.Controls.Add(Me.toms)
        Me.Controls.Add(Me.snare)
        Me.Controls.Add(Me.piano)
        Me.Controls.Add(Me.percussion)
        Me.Controls.Add(Me.kick)
        Me.Controls.Add(Me.hats)
        Me.Controls.Add(Me.guitar)
        Me.Controls.Add(Me.clap)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.connect)
        Me.Controls.Add(Me.portlist)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.KeyPreview = True
        Me.Margin = New System.Windows.Forms.Padding(6)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Midi Player using Picmicro"
        CType(Me.ch9, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch8, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch7, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch6, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch5, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ch1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents portlist As ComboBox
    Friend WithEvents connect As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents clap As Button
    Friend WithEvents guitar As Button
    Friend WithEvents hats As Button
    Friend WithEvents kick As Button
    Friend WithEvents percussion As Button
    Friend WithEvents piano As Button
    Friend WithEvents snare As Button
    Friend WithEvents toms As Button
    Friend WithEvents ch1 As PictureBox
    Friend WithEvents ch2 As PictureBox
    Friend WithEvents ch3 As PictureBox
    Friend WithEvents ch4 As PictureBox
    Friend WithEvents ch5 As PictureBox
    Friend WithEvents ch6 As PictureBox
    Friend WithEvents ch7 As PictureBox
    Friend WithEvents ch8 As PictureBox
    Friend WithEvents ch9 As PictureBox
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Label3 As Label
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
    Friend WithEvents status As Label
    Friend WithEvents refresh As Button
End Class

<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
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
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.portlist = New System.Windows.Forms.ComboBox()
        Me.refrsh = New System.Windows.Forms.Button()
        Me.connect = New System.Windows.Forms.Button()
        Me.send = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.status = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.MQ135_con = New System.Windows.Forms.TextBox()
        Me.MQ135_value = New System.Windows.Forms.TextBox()
        Me.MQ6_con = New System.Windows.Forms.TextBox()
        Me.MQ6_value = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.dust_con = New System.Windows.Forms.TextBox()
        Me.smoke_con = New System.Windows.Forms.TextBox()
        Me.dust_value = New System.Windows.Forms.TextBox()
        Me.smoke_value = New System.Windows.Forms.TextBox()
        Me.sound_value = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(47, 9)
        Me.Label1.Margin = New System.Windows.Forms.Padding(5, 0, 5, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(364, 55)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "IoT Report App"
        '
        'portlist
        '
        Me.portlist.DropDownHeight = 115
        Me.portlist.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.portlist.FormattingEnabled = True
        Me.portlist.IntegralHeight = False
        Me.portlist.Location = New System.Drawing.Point(23, 67)
        Me.portlist.Name = "portlist"
        Me.portlist.Size = New System.Drawing.Size(121, 34)
        Me.portlist.TabIndex = 2
        '
        'refrsh
        '
        Me.refrsh.Location = New System.Drawing.Point(150, 67)
        Me.refrsh.Name = "refrsh"
        Me.refrsh.Size = New System.Drawing.Size(137, 34)
        Me.refrsh.TabIndex = 3
        Me.refrsh.Text = "Refresh"
        Me.refrsh.UseVisualStyleBackColor = True
        '
        'connect
        '
        Me.connect.Location = New System.Drawing.Point(293, 67)
        Me.connect.Name = "connect"
        Me.connect.Size = New System.Drawing.Size(133, 33)
        Me.connect.TabIndex = 4
        Me.connect.Text = "Connect"
        Me.connect.UseVisualStyleBackColor = True
        '
        'send
        '
        Me.send.Location = New System.Drawing.Point(85, 106)
        Me.send.Name = "send"
        Me.send.Size = New System.Drawing.Size(276, 33)
        Me.send.TabIndex = 10
        Me.send.Text = "Send to server"
        Me.send.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        '
        'status
        '
        Me.status.AutoSize = True
        Me.status.Location = New System.Drawing.Point(23, 146)
        Me.status.Name = "status"
        Me.status.Size = New System.Drawing.Size(0, 26)
        Me.status.TabIndex = 13
        Me.status.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.MQ135_con)
        Me.GroupBox1.Controls.Add(Me.MQ135_value)
        Me.GroupBox1.Controls.Add(Me.MQ6_con)
        Me.GroupBox1.Controls.Add(Me.MQ6_value)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.dust_con)
        Me.GroupBox1.Controls.Add(Me.smoke_con)
        Me.GroupBox1.Controls.Add(Me.dust_value)
        Me.GroupBox1.Controls.Add(Me.smoke_value)
        Me.GroupBox1.Controls.Add(Me.sound_value)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Location = New System.Drawing.Point(28, 168)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(403, 187)
        Me.GroupBox1.TabIndex = 14
        Me.GroupBox1.TabStop = False
        '
        'MQ135_con
        '
        Me.MQ135_con.Location = New System.Drawing.Point(274, 233)
        Me.MQ135_con.Name = "MQ135_con"
        Me.MQ135_con.ReadOnly = True
        Me.MQ135_con.Size = New System.Drawing.Size(123, 33)
        Me.MQ135_con.TabIndex = 14
        Me.MQ135_con.Visible = False
        '
        'MQ135_value
        '
        Me.MQ135_value.Location = New System.Drawing.Point(152, 233)
        Me.MQ135_value.Name = "MQ135_value"
        Me.MQ135_value.ReadOnly = True
        Me.MQ135_value.Size = New System.Drawing.Size(107, 33)
        Me.MQ135_value.TabIndex = 13
        Me.MQ135_value.Visible = False
        '
        'MQ6_con
        '
        Me.MQ6_con.Location = New System.Drawing.Point(274, 187)
        Me.MQ6_con.Name = "MQ6_con"
        Me.MQ6_con.ReadOnly = True
        Me.MQ6_con.Size = New System.Drawing.Size(123, 33)
        Me.MQ6_con.TabIndex = 12
        Me.MQ6_con.Visible = False
        '
        'MQ6_value
        '
        Me.MQ6_value.Location = New System.Drawing.Point(152, 187)
        Me.MQ6_value.Name = "MQ6_value"
        Me.MQ6_value.ReadOnly = True
        Me.MQ6_value.Size = New System.Drawing.Size(107, 33)
        Me.MQ6_value.TabIndex = 11
        Me.MQ6_value.Visible = False
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(6, 236)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(77, 26)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "MQ135:"
        Me.Label6.Visible = False
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(6, 190)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(62, 26)
        Me.Label5.TabIndex = 9
        Me.Label5.Text = "MQ6:"
        Me.Label5.Visible = False
        '
        'dust_con
        '
        Me.dust_con.Location = New System.Drawing.Point(274, 141)
        Me.dust_con.Name = "dust_con"
        Me.dust_con.ReadOnly = True
        Me.dust_con.Size = New System.Drawing.Size(123, 33)
        Me.dust_con.TabIndex = 8
        '
        'smoke_con
        '
        Me.smoke_con.Location = New System.Drawing.Point(274, 88)
        Me.smoke_con.Name = "smoke_con"
        Me.smoke_con.ReadOnly = True
        Me.smoke_con.Size = New System.Drawing.Size(123, 33)
        Me.smoke_con.TabIndex = 7
        '
        'dust_value
        '
        Me.dust_value.Location = New System.Drawing.Point(152, 141)
        Me.dust_value.Name = "dust_value"
        Me.dust_value.ReadOnly = True
        Me.dust_value.Size = New System.Drawing.Size(107, 33)
        Me.dust_value.TabIndex = 5
        '
        'smoke_value
        '
        Me.smoke_value.Location = New System.Drawing.Point(152, 88)
        Me.smoke_value.Name = "smoke_value"
        Me.smoke_value.ReadOnly = True
        Me.smoke_value.Size = New System.Drawing.Size(107, 33)
        Me.smoke_value.TabIndex = 4
        '
        'sound_value
        '
        Me.sound_value.Location = New System.Drawing.Point(152, 37)
        Me.sound_value.Name = "sound_value"
        Me.sound_value.ReadOnly = True
        Me.sound_value.Size = New System.Drawing.Size(245, 33)
        Me.sound_value.TabIndex = 3
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(6, 144)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(125, 26)
        Me.Label4.TabIndex = 2
        Me.Label4.Text = "Dust Sensor:"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(6, 91)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(144, 26)
        Me.Label3.TabIndex = 1
        Me.Label3.Text = "Smoke Sensor:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(6, 40)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(140, 26)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "Sound Sensor:"
        '
        'SerialPort1
        '
        Me.SerialPort1.ReadTimeout = 1000
        Me.SerialPort1.WriteTimeout = 1000
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(11.0!, 26.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(449, 366)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.status)
        Me.Controls.Add(Me.send)
        Me.Controls.Add(Me.connect)
        Me.Controls.Add(Me.refrsh)
        Me.Controls.Add(Me.portlist)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("Candara", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(5, 7, 5, 7)
        Me.MaximizeBox = False
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "IoT Report App"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents portlist As System.Windows.Forms.ComboBox
    Friend WithEvents refrsh As System.Windows.Forms.Button
    Friend WithEvents connect As System.Windows.Forms.Button
    Friend WithEvents send As System.Windows.Forms.Button
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents status As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dust_value As System.Windows.Forms.TextBox
    Friend WithEvents smoke_value As System.Windows.Forms.TextBox
    Friend WithEvents sound_value As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents SerialPort1 As System.IO.Ports.SerialPort
    Friend WithEvents dust_con As TextBox
    Friend WithEvents smoke_con As TextBox
    Friend WithEvents MQ135_con As TextBox
    Friend WithEvents MQ135_value As TextBox
    Friend WithEvents MQ6_con As TextBox
    Friend WithEvents MQ6_value As TextBox
    Friend WithEvents Label6 As Label
    Friend WithEvents Label5 As Label
End Class

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
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.portlist = New System.Windows.Forms.ComboBox()
        Me.connect = New System.Windows.Forms.Button()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.refresh = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.fontsize = New System.Windows.Forms.TextBox()
        Me.ColorDialog1 = New System.Windows.Forms.ColorDialog()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Label2 = New System.Windows.Forms.Label()
        Me.speed = New System.Windows.Forms.TextBox()
        Me.clear = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'RichTextBox1
        '
        Me.RichTextBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.RichTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.RichTextBox1.DetectUrls = False
        Me.RichTextBox1.Font = New System.Drawing.Font("MS Reference Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RichTextBox1.Location = New System.Drawing.Point(0, 39)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.ReadOnly = True
        Me.RichTextBox1.Size = New System.Drawing.Size(693, 443)
        Me.RichTextBox1.TabIndex = 0
        Me.RichTextBox1.Text = ""
        '
        'portlist
        '
        Me.portlist.FormattingEnabled = True
        Me.portlist.Location = New System.Drawing.Point(12, 12)
        Me.portlist.Name = "portlist"
        Me.portlist.Size = New System.Drawing.Size(103, 21)
        Me.portlist.TabIndex = 2
        '
        'connect
        '
        Me.connect.Cursor = System.Windows.Forms.Cursors.Default
        Me.connect.Location = New System.Drawing.Point(202, 12)
        Me.connect.Name = "connect"
        Me.connect.Size = New System.Drawing.Size(75, 23)
        Me.connect.TabIndex = 3
        Me.connect.Text = "Connect"
        Me.connect.UseVisualStyleBackColor = True
        '
        'SerialPort1
        '
        '
        'refresh
        '
        Me.refresh.Location = New System.Drawing.Point(121, 12)
        Me.refresh.Name = "refresh"
        Me.refresh.Size = New System.Drawing.Size(75, 23)
        Me.refresh.TabIndex = 4
        Me.refresh.Text = "Refresh"
        Me.refresh.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(283, 17)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(54, 13)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Font Size:"
        '
        'fontsize
        '
        Me.fontsize.Location = New System.Drawing.Point(343, 13)
        Me.fontsize.MaxLength = 3
        Me.fontsize.Name = "fontsize"
        Me.fontsize.Size = New System.Drawing.Size(36, 20)
        Me.fontsize.TabIndex = 6
        Me.fontsize.WordWrap = False
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(385, 12)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 7
        Me.Button1.Text = "BG Colour"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(466, 12)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 8
        Me.Button2.Text = "Font Colour"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 10
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(547, 17)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(41, 13)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "Speed:"
        '
        'speed
        '
        Me.speed.Location = New System.Drawing.Point(595, 13)
        Me.speed.Name = "speed"
        Me.speed.Size = New System.Drawing.Size(33, 20)
        Me.speed.TabIndex = 10
        '
        'clear
        '
        Me.clear.Location = New System.Drawing.Point(634, 11)
        Me.clear.Name = "clear"
        Me.clear.Size = New System.Drawing.Size(47, 23)
        Me.clear.TabIndex = 11
        Me.clear.Text = "Clear"
        Me.clear.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(693, 484)
        Me.Controls.Add(Me.clear)
        Me.Controls.Add(Me.speed)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.fontsize)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.refresh)
        Me.Controls.Add(Me.connect)
        Me.Controls.Add(Me.portlist)
        Me.Controls.Add(Me.RichTextBox1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form1"
        Me.Text = "Control Board"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents RichTextBox1 As RichTextBox
    Friend WithEvents portlist As ComboBox
    Friend WithEvents connect As Button
    Friend WithEvents SerialPort1 As IO.Ports.SerialPort
    Friend WithEvents refresh As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents fontsize As TextBox
    Friend WithEvents ColorDialog1 As ColorDialog
    Friend WithEvents Button1 As Button
    Friend WithEvents Button2 As Button
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Label2 As Label
    Friend WithEvents speed As TextBox
    Friend WithEvents clear As Button
End Class

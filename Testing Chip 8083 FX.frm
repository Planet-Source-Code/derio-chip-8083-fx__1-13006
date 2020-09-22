VERSION 5.00
Begin VB.Form FMain 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Testing Chip 8083 FX"
   ClientHeight    =   3180
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5775
   Icon            =   "Testing Chip 8083 FX.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3180
   ScaleWidth      =   5775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExecute 
      Caption         =   "Execute"
      Height          =   375
      Left            =   4320
      TabIndex        =   2
      Top             =   2640
      Width           =   1335
   End
   Begin VB.TextBox txtResult 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2640
      Width           =   3975
   End
   Begin VB.TextBox txtExpression 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2475
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   5535
   End
End
Attribute VB_Name = "FMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim TestProcessor As Chip8083FX.CProcessor

Private Sub cmdExecute_Click()
  On Error Resume Next
  txtResult = TestProcessor.Calculate(txtExpression)
  If Err <> 0 Then
    MsgBox "Error on Calculation" & vbCr & _
           Err.Description, vbInformation
  End If
  On Error GoTo 0
  Err.Clear
End Sub

Private Sub Form_Load()
  Set TestProcessor = New Chip8083FX.CProcessor
  With TestProcessor
    .BaseCalculation = DegreeMode
    .Memory(0) = 10
    .Memory(3) = 7
    .Memory(10) = 3
    .DeclareConstant("DISCOUNT") = 15
    .DeclareConstant("TAX") = 10
    .DeclareFunction("GROSS") = "X * (1 - DISCOUNT/100)"
    .DeclareFunction("NET") = "GROSS(X) * (1 - TAX/100)"
  End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Set TestProcessor = Nothing
End Sub

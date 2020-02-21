
Imports System.Configuration
Public Class Limpiar
    Public Sub CleanControls(ByVal controles As ControlCollection)
        For Each control As Control In controles
            If TypeOf control Is TextBox Then
                DirectCast(control, TextBox).Text = String.Empty
            ElseIf TypeOf control Is DropDownList Then
                DirectCast(control, DropDownList).SelectedIndex = 0
            ElseIf TypeOf control Is RadioButtonList Then
                DirectCast(control, RadioButtonList).SelectedIndex = 0
            ElseIf TypeOf control Is CheckBoxList Then
                DirectCast(control, CheckBoxList).SelectedIndex = 0
            ElseIf TypeOf control Is RadioButton Then
                DirectCast(control, RadioButton).Checked = False
            ElseIf TypeOf control Is CheckBox Then
                DirectCast(control, CheckBox).Checked = False
            ElseIf control.HasControls() Then
                CleanControls(control.Controls)
            End If
        Next
    End Sub

End Class

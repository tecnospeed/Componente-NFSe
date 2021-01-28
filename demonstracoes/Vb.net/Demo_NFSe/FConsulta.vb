Public Class FConsulta

    Private Sub btnConsultar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnConsultar1.Click
        FExemplo.ModalResult = 1
        Hide()
    End Sub

    Private Sub btnCancelar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar1.Click
        Close()
    End Sub
End Class
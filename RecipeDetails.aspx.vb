﻿
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim DeletedRecipe As String = e.Values("RecipeName")

        lbl_deletedrecipe.Text = DeletedRecipe & " has been deleted from the database"

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub



   
    
End Class

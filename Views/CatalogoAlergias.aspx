<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CatalogoAlergias.aspx.cs" Inherits="ClinicaMedica.Views.CatalogoAlergias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        //$(document).ready(function () {
        //    ShowWarning();
        //});
        function ShowWarning() {
            $("#AlergiaAlerta").show();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-default">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <asp:Label ID="lblAlergiaAlerta" runat="server" Cssclass="alert alert-danger" Visible="false"></asp:Label>
            </div>
        </div>
        <div class="row" style="height: 750px;">
            <div class="col-lg-9 col-md-9 col-sm-9">
                <div class="panel panel-default" style="height: 751px;">
                    <div class="panel-heading">Catalogos</div>
                    <div class="panel-body">
                        <nav>
                            <ul class="nav nav-tabs" style="margin-bottom: 2px;">
                                <li role="presentation"><a id="aMedicamentos" runat="server" href="~/">Medicamentos</a></li>
                                <li role="presentation" class="active"><a id="aAlergias" runat="server" href="~/Views/CatalogoAlergias">Alergias</a></li>
                                <li role="presentation"><a id="aEnfermedades" runat="server" href="~/Views/CatalogoEnfermedades">Enfermedades</a></li>
                                <li role="presentation"><a id="aLaboratorios" runat="server" href="~/Contact">Laboratorios</a></li>
                                <li role="presentation"><a id="aEstados" runat="server" href="~/Views/CatalogoEstados">Estados</a></li>
                            </ul>
                        </nav>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="panel panel-default" style="height: 600px; border: none;">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">Alergia:</div>
                                                <asp:TextBox ID="txtNombreAlergia" runat="server" CssClass="form-control" placeholder="Nombre de Alergia"></asp:TextBox>
                                            </div>
                                            <br />
                                            <div class="input-group">
                                                <div class="input-group-addon">Descripcion:</div>
                                                <asp:TextBox ID="txtDescripcionAlergia" runat="server" CssClass="form-control" placeholder="Descripcion de Alergia" TextMode="MultiLine"></asp:TextBox>

                                            </div>
                                            <br />
                                            <div style="float: right;">
                                                <asp:Button ID="btnGuardarNombreAlergia" runat="server" Text="Guardar" CssClass="btn btn-default form-control" OnClick="btnGuardarNombreAlergia_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="panel panel-default" style="height: 600px;">
                                    <div class="panel-heading">
                                        <h4>Alergias en Catalogo</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="input-group">
                                            <div class="input-group-addon">Buscar:</div>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Buscar Alergia"></asp:TextBox>
                                            <div class="input-group-addon">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </div>
                                        </div>
                                        <br />
                                        <asp:GridView ID="grdCatalogoAlergia" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed datatable table-hover" HeaderStyle-CssClass="btn-info">
                                            <Columns>
                                                <asp:BoundField HeaderText="Alergia" DataField="dfAlergia" ReadOnly="true" ItemStyle-Width="100px" />
                                                <asp:BoundField HeaderText="Descripcion" DataField="dfDescripcion" ReadOnly="true" ItemStyle-Width="100px" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="panel-heading" style="background-color:aliceblue">Catálogos</div>--%>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="panel panel-default" style="height: 751px;">
                    <div class="panel-heading">Información</div>
                    <div class="panel-body">
                        fdsafdasfdsafdsafdsfsafdsadsaf
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

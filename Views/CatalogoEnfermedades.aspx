<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CatalogoEnfermedades.aspx.cs" Inherits="ClinicaMedica.Views.CatalogoEnfermedades" %>
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
        <div class="row" style="height:750px;">
            <div class="col-lg-9 col-md-9 col-sm-9">
                <div class="panel panel-default" style="height:751px;">
                    <div class="panel-heading">Enfermedades</div>
                    <div class="panel-body">
                        <nav>
                            <ul class="nav nav-tabs" style="margin-bottom:2px;">
                                <li role="presentation"><a id="aMedicamentos" runat="server" href="~/">Medicamentos</a></li>
                                <li role="presentation"><a id="aAlergias" runat="server" href="~/Views/CatalogoAlergias">Alergias</a></li>
                                <li role="presentation" class="active"><a id="aEnfermedades" runat="server" href="~/Views/CatalogoEnfermedades">Enfermedades</a></li>
                                <li role="presentation"><a id="aLaboratorios" runat="server" href="~/Contact">Laboratorios</a></li>
                                <li role="presentation"><a id="aEstados" runat="server" href="~/Views/CatalogoEstados">Estados</a></li>
                            </ul>
                        </nav>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="panel panel-default" style="height:600px;border:none;">
                                    <div class="panel-body">                                           
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">Enfermedad:</div>
                                                <asp:TextBox ID="txtNombreEnfermedad" runat="server" CssClass="form-control" placeholder="Nombre de Estado"></asp:TextBox>                                                                                                                                         
                                            </div>
                                            <br />
                                            <div class="input-group">
                                                <div class="input-group-addon">Descripcion:</div>
                                                <asp:TextBox ID="txtDescripcionEnfermedad" runat="server" CssClass="form-control" placeholder="Descripcion de Estado" TextMode="MultiLine"></asp:TextBox>  
                                                                                                                                                                                       
                                            </div>
                                            <br />
                                            <div style="float:right;">
                                                <asp:Button ID="btnGuardarDatosEnfermedad" runat="server" Text="Guardar" CssClass="btn btn-default form-control" />
                                            </div>                                                                                        
                                        </div>                                                                             
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="panel panel-default" style="height:600px;">
                                    <div class="panel-heading">
                                        <h4>Enfermedades en Catalogo</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="input-group">
                                            <div class="input-group-addon">Buscar:</div>
                                            <asp:TextBox ID="txtBuscarEstado" runat="server" CssClass="form-control" placeholder="Buscar Estado"></asp:TextBox>
                                            <div class="input-group-addon">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </div>                                                                                      
                                        </div>
                                        <br />                                        
                                        <asp:GridView ID="grdCatalogoEnfermedad" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed datatable table-hover" HeaderStyle-CssClass="btn-info">
                                            <Columns>
                                                <asp:BoundField HeaderText="Enfermedad" DataField="dfEnfermedad" ReadOnly="true" ItemStyle-Width="100px" />
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
                <div class="panel panel-default" style="height:751px;">
                    <div class="panel-heading">Información</div>
                    <div class="panel-body">
                        fdsafdasfdsafdsafdsfsafdsadsaf
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

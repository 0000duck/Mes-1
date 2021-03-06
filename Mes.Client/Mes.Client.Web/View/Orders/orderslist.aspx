﻿<%@ Page Title="订单查询" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orderslist.aspx.cs" Inherits="Mes.Client.Web.View.Orders.orderslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
     <script src="/Script/forms/orders/jquery.forms.orderlist.js?ver=1.2"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
     <div title="订单修改（备注：未排产订单可直接修改，已排产订单需提交修改申请由生产办审核！）" region="center" style="border: 0px;" border="false">
        <!--搜索界面-->
        <div class="easyui-layout" fit="true" border="false">
            <div region="center" border="false">
                <table id="dgdetail"></table>
            </div>
            <div region="north" border="false" style="text-align: right; overflow: hidden;" id="search_window">
                <div style="height: auto 50px;" class="datagrid-toolbar">
                    <form id="search_form" method="post">
                        <table style="width: 100%; height: auto; padding: 5px;">
                            <tr>
                                <td class="lbl-caption" style="width: 70px;">订单编号:</td>
                                <td style="width: 300px;">
                                    <input type="text" id="OrderNo" name="OrderNo" style="width: 300px;"  />
                                </td>
                                <td style="width: 100px;">
                                     <a href="javascript:void(0)" id="btn_search_ok" icon="icon-search" style="width: 80px;">搜索</a>
                                </td>
                                <td></td>
                              </tr>                 
                        </table>
                    </form>
                </div>
            </div>

            <div id="edit_window" class="easyui-window" closed="true" title="审核明细" data-options="iconCls:'icon-save'"
                style="width: 850px; height: 480px; background: #fff;" minimizable="false" maximizable="false">
                <div class="easyui-layout" fit="true" border="false">
                    <div region="center" border="false">
                        <table id="dgsteps"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

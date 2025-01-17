<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CostArchitecturalModelTemp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="max-w-screen-lg mx-auto px-4 py-8">
        <div class="bg-yellow-400 text-black font-bold text-xl px-4 py-2">
            <h1>Cost Architectural Model</h1>
                    <div class="text-right text-sm italic mt-2">Created: <%: DateTime.Now.ToShortDateString() %></div>

        </div>
        <div class="bg-blue-300 text-black font-bold px-4 py-2">
            <h2>Programme Name: BCG20107- GENERAL CONSTRUCTION LEVEL 2</h2>
        </div>

        <section class="mt-4 border border-black">
            <h3 class="bg-gray-200 font-bold px-4 py-2 border-b border-black">1. Programme Variables</h3>
            <div class="grid grid-cols-3 gap-4 p-4">
                <div class="flex justify-between border-b border-black py-1">
                    <label>Programme Length in Months (PLM)</label>
                    <span class="font-bold">12 Months</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Programme Modality</label>
                    <span class="font-bold">Blended</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Student Group Size (SGS)</label>
                    <span class="font-bold">40 Students</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Instructional Hours (ISH)</label>
                    <span class="font-bold">1980</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Lecturer Rate/Hour</label>
                    <span class="font-bold">$1,848.35/hr</span>
                </div>
            </div>
        </section>

        <section class="mt-4 border border-black">
            <h3 class="bg-gray-200 font-bold px-4 py-2 border-b border-black">2. Programme Direct Cost</h3>
            <div class="grid grid-cols-2 gap-4 p-4">
                <div class="flex justify-between border-b border-black py-1">
                    <label>Total Direct Cost</label>
                    <span class="font-bold">$5,259,793.02</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Instructional Cost (2a)</label>
                    <span class="font-bold">$3,659,733.00</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Training Material (2b)</label>
                    <span class="font-bold">$772,533.07</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Trainee Benefits (2c)</label>
                    <span class="font-bold">$332,742.15</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Other Direct Expenses (2d)</label>
                    <span class="font-bold">$494,784.80</span>
                </div>
            </div>
        </section>

        <section class="mt-4 border border-black">
            <h3 class="bg-gray-200 font-bold px-4 py-2 border-b border-black">3. Programme Overhead Cost</h3>
            <div class="grid grid-cols-2 gap-4 p-4">
                <div class="flex justify-between border-b border-black py-1">
                    <label>Overhead Absorption Rate (OAR)</label>
                    <span class="font-bold">$10,264.58/hr</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Total Overhead Cost</label>
                    <span class="font-bold">$15,341,337.00</span>
                </div>
            </div>
        </section>

        <section class="mt-4 border border-black">
            <h3 class="bg-gray-200 font-bold px-4 py-2 border-b border-black">4. Total Programme Cost</h3>
            <div class="p-4">
                <div class="flex justify-between border-b border-black py-1">
                    <label>Total Cost</label>
                    <span class="font-bold">$22,153,028.02</span>
                </div>
            </div>
        </section>

        <section class="mt-4 border border-black">
            <h3 class="bg-gray-200 font-bold px-4 py-2 border-b border-black">5. Per Student Cost</h3>
            <div class="p-4">
                <div class="flex justify-between border-b border-black py-1">
                    <label>Full Program Cost per Student</label>
                    <span class="font-bold">$553,825.70</span>
                </div>
                <div class="flex justify-between border-b border-black py-1">
                    <label>Unit Cost per Instructional Hour</label>
                    <span class="font-bold">$11,188.40</span>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

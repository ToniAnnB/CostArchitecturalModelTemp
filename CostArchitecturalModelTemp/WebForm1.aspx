<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CostArchitecturalModelTemp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="p-4">
    <div>
          <h1 class="text-lg font-bold mb-2">Cost Architectural Model</h1>

          <p class="font-semibold mb-4">
    Created: <span class="font-normal">18/11/2023</span>
  </p>
    </div>

  <p class="font-semibold">
    Programme Name: <span class="font-normal">BCG29107 - GENERAL CONSTRUCTION LEVEL 2</span>
  </p>


  <table class="w-full table-auto border border-black text-sm">
    <thead class="bg-yellow-400 text-black font-bold">
      <tr>
        <th class="border border-black p-2 text-left">Section</th>
        <th class="border border-black p-2 text-left">Details</th>
        <th class="border border-black p-2 text-left">Cost</th>
      </tr>
    </thead>
    <tbody>
      <!-- Programme Variables -->
      <tr>
        <td class="border border-black p-2 font-bold bg-gray-100">1. Programme Variables</td>
        <td class="border border-black p-2 bg-gray-100"></td>
        <td class="border border-black p-2 bg-gray-100"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Programme Length in Months (PLM)</td>
        <td class="border border-black p-2">12 Months</td>
        <td class="border border-black p-2"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Programme Modality</td>
        <td class="border border-black p-2">Blended</td>
        <td class="border border-black p-2"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Student Group Size (SGS)</td>
        <td class="border border-black p-2">40 Students</td>
        <td class="border border-black p-2"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Instructional Hours (ISH)</td>
        <td class="border border-black p-2">1980</td>
        <td class="border border-black p-2">$1,848.35/hr</td>
      </tr>

      <!-- Programme Direct Cost -->
      <tr>
        <td class="border border-black p-2 font-bold bg-gray-100">2. Programme Direct Cost</td>
        <td class="border border-black p-2 bg-gray-100"></td>
        <td class="border border-black p-2 bg-gray-100"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Total Direct Cost</td>
        <td class="border border-black p-2">Includes 2(a+b+c+d)</td>
        <td class="border border-black p-2">$5,259,793.02</td>
      </tr>
      <tr>
        <td class="border border-black p-2">Instructional Cost (2a)</td>
        <td class="border border-black p-2">1980 Hrs</td>
        <td class="border border-black p-2">$3,659,733.00</td>
      </tr>
      <tr>
        <td class="border border-black p-2">Training Material (2b)</td>
        <td class="border border-black p-2"></td>
        <td class="border border-black p-2">$772,533.07</td>
      </tr>
      <tr>
        <td class="border border-black p-2">Trainee Benefits (2c)</td>
        <td class="border border-black p-2">Includes Medical & Welfare</td>
        <td class="border border-black p-2">$332,742.15</td>
      </tr>
      <tr>
        <td class="border border-black p-2">Other Direct Expenses (2d)</td>
        <td class="border border-black p-2">Food, Transport, Awards</td>
        <td class="border border-black p-2">$494,784.80</td>
      </tr>

      <!-- Programme Overhead Cost -->
      <tr>
        <td class="border border-black p-2 font-bold bg-gray-100">3. Programme Overhead Cost</td>
        <td class="border border-black p-2 bg-gray-100"></td>
        <td class="border border-black p-2 bg-gray-100"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Overhead Absorption Rate (OAR)</td>
        <td class="border border-black p-2">$10,264.58/hr</td>
        <td class="border border-black p-2">$15,341,337.00</td>
      </tr>

      <!-- Total Programme Cost -->
      <tr>
        <td class="border border-black p-2 font-bold bg-gray-100">4. Total Programme Cost</td>
        <td class="border border-black p-2 bg-gray-100"></td>
        <td class="border border-black p-2 bg-gray-100"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Total Cost</td>
        <td class="border border-black p-2"></td>
        <td class="border border-black p-2">$22,153,028.02</td>
      </tr>

      <!-- Per Student Cost -->
      <tr>
        <td class="border border-black p-2 font-bold bg-gray-100">5. Per Student Cost</td>
        <td class="border border-black p-2 bg-gray-100"></td>
        <td class="border border-black p-2 bg-gray-100"></td>
      </tr>
      <tr>
        <td class="border border-black p-2">Full Program Cost per Student</td>
        <td class="border border-black p-2"></td>
        <td class="border border-black p-2">$553,825.70</td>
      </tr>
      <tr>
        <td class="border border-black p-2">Unit Cost per Instructional Hour</td>
        <td class="border border-black p-2"></td>
        <td class="border border-black p-2">$11,188.40</td>
      </tr>
    </tbody>
  </table>
</div>
</asp:Content>

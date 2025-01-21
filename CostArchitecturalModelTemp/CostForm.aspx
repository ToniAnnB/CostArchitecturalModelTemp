<%@ Page Title="Cost Architectural Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CostForm.aspx.cs" Inherits="CostArchitecturalModelTemp.CostForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="max-w-4xl mx-auto py-6 px-4 text-center">
        <h1 class="text-3xl font-bold text-sky-500">COST ARCHITECTURAL MODEL</h1>
        <%--        <p class="text-sm text-gray-600 mt-1">Created: <%:DateTime.Now.ToShortDateString() %></p>--%>
    </div>


    <div class="max-w-4xl mx-auto bg-white shadow-md rounded-lg ">
        <div class="px-6 py-4 mb-4  bg-sky-500 border-b border-sky-200 rounded-t-lg">
            <h1 class="text-2xl font-semibold text-gray-50">Programme Name</h1>
            <select id="programme" class="w-full p-2 mt-2 border border-gray-300 rounded-md focus:ring-sky-500 focus:border-sky-500">
                <option value="BCG20107">BCG20107 - GENERAL CONSTRUCTION LEVEL 2</option>
                <option value="BCG20108">BCG20108 - ADVANCED CONSTRUCTION LEVEL 3</option>
                <option value="BCG20109">BCG20109 - ARCHITECTURAL DESIGN LEVEL 1</option>
            </select>
        </div>
        <div class="flex justify-between items-center space-x-4 pb-5  px-7 md:space-x-8 ">
            <div id="tracker-step-1" class="flex flex-col items-center cursor-pointer">
                <div class="w-12 h-12 flex items-center justify-center bg-sky-500 text-white rounded-full shadow-md">
                    <span class="text-lg font-bold">1</span>
                </div>
                <span class="text-sm font-medium text-sky-700 mt-2">Programme Variables</span>
            </div>
            <div id="tracker-step-2" class="flex flex-col items-center cursor-pointer">
                <div class="w-12 h-12 flex items-center justify-center bg-gray-300 text-gray-700 rounded-full shadow-md">
                    <span class="text-lg font-bold">2</span>
                </div>
                <span class="text-sm font-medium text-gray-600 mt-2">Programme Direct Cost</span>
            </div>
            <div id="tracker-step-3" class="flex flex-col items-center cursor-pointer">
                <div class="w-12 h-12 flex items-center justify-center bg-gray-300 text-gray-700 rounded-full shadow-md">
                    <span class="text-lg font-bold">3</span>
                </div>
                <span class="text-sm font-medium text-gray-600 mt-2">Programme Overhead Cost</span>
            </div>
            <div id="tracker-step-4" class="flex flex-col items-center cursor-pointer">
                <div class="w-12 h-12 flex items-center justify-center bg-gray-300 text-gray-700 rounded-full shadow-md">
                    <span class="text-lg font-bold">4</span>
                </div>
                <span class="text-sm font-medium text-gray-600 mt-2">Total Programme Cost</span>
            </div>
        </div>
    </div>


    <div id="form-container" class="max-w-4xl mx-auto bg-white shadow-md rounded-lg p-6 mt-6 mb-6">


        <div id="step-1" class="step space-y-6">
            <h2 class="text-lg font-semibold text-gray-800 mb-4">Programme Variables</h2>

            <div class="space-y-2">
                <label for="programmeLength" class="block text-sm font-medium text-gray-700">Programme Length in Months (PLM) </label>
                <div class="flex items-end space-x-2">
                    <input id="programmeLength" type="number" class="w-full p-2 border border-gray-300 rounded-md focus:ring-sky-500 focus:border-sky-500" placeholder="Eg. 12" />
                    <span class="text-gray-600">Months</span>
                </div>
            </div>


            <fieldset class="space-y-2">
                <legend class="text-sm font-medium text-gray-700">Programme Modality</legend>
                <div class="flex space-x-4">
                    <div class="flex items-center">
                        <input id="modeInPerson" type="radio" name="programmeMode" value="1" class="h-4 w-4 text-sky-500 focus:ring-sky-500 border-gray-300" />
                        <label for="modeInPerson" class="ml-2 text-sm font-medium text-gray-700">In Person</label>
                    </div>
                    <%--                    <div class="flex items-center">
                        <input id="modeOnline" type="radio" name="programmeMode" value="2" class="h-4 w-4 text-sky-500 focus:ring-sky-500 border-gray-300" />
                        <label for="modeOnline" class="ml-2 text-sm font-medium text-gray-700">Online</label>
                    </div>--%>
                    <div class="flex items-center">
                        <input id="modeBlended" type="radio" name="programmeMode" value="3" class="h-4 w-4 text-sky-500 focus:ring-sky-500 border-gray-300" />
                        <label for="modeBlended" class="ml-2 text-sm font-medium text-gray-700">Blended</label>
                    </div>
                </div>
            </fieldset>


            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="lg:col-span-2 space-y-2">
                    <label for="sGroupSize" class="block text-sm font-medium text-gray-700">Student Group Size: All Cohorts (SGS)</label>
                    <div class="flex items-end space-x-2">
                        <input id="sGroupSize" type="number" onblur="updateFields()" class="w-full p-2 border border-gray-300 rounded-md focus:ring-sky-500 focus:border-sky-500" placeholder="Eg. 40" />
                        <span class="text-gray-600">Students</span>
                    </div>
                </div>


                <div class="space-y-2">
                    <label for="instructionalHrs" class="block text-sm font-medium text-gray-700">Instructional Hours (ISH)</label>
                    <input id="instructionalHrs" onblur="updateFields(); enforceDecimal()" oninput="formatFloatInput(this)" type="text" class="w-full p-2 border border-gray-300 rounded-md focus:ring-sky-500 focus:border-sky-500" placeholder="Eg. 1980" />
                </div>


                <div class="space-y-2">
                    <label for="lectureRate" class="block text-sm font-medium text-gray-700">Lecture Rate/Hour</label>
                    <div class="flex items-end space-x-2">
                        <div class="flex rounded-md shadow-sm">
                            <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$ </span>
                            <input id="lectureRate" type="text" onblur="updateFields(); enforceDecimalFormat(this)" oninput="formatFloatInput(this)" class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500" placeholder="Eg. 1848.35" />
                        </div>
                        <span class="text-gray-600">/hr</span>
                    </div>

                </div>

            </div>
        </div>


        <div id="step-2" class="step hidden">
            <h2 class="text-lg font-semibold text-gray-800 mb-4">Programme Direct Cost</h2>

            <div class="mb-6 ">
                <p class="text-sm text-gray-600">
                    Total Direct Cost = Step 2 (a + b + c + d)
                </p>
                <p class="text-sm text-gray-600">
                    Total Direct Cost = Instructional Cost + Direct Training Materials + Trainee Benefits + Other Direct Expenses
                </p>
            </div>

            <div id="dProgCostSummary" class="mb-6 p-4 bg-sky-50 border border-sky-200 rounded-md">
                <h3 class="text-md font-semibold text-sky-700 mb-2">Mini Summary</h3>
                <ul class="text-sm text-gray-800">
                    <li>Instructional Hours (2a): <span id="sumInstruHrs">0 </span>hr</li>
                    <li>Instructional Cost (2a): $<span id="sumInstruCost">0.00</span></li>
                    <li>Training Material Cost (2b): $<span id="sumTrainMaterial">0.00</span></li>
                    <li>Training Benefits Cost (2c): $<span id="sumTrainBenefits">0.00</span></li>
                    <li>Other Direct Expenses (2d): $<span id="summOtherExpenses">0.00</span></li>
                    <li class="font-bold mt-2">Total Direct Cost: $<span id="sumTotalProgCost">0.00</span></li>
                </ul>
            </div>


            <div class="flex gap-4 p-4 mb-6 border border-sky-200 rounded-md">
                <h3 class="text-md font-semibold w-28  text-sky-700 mb-2">Instructional Cost</h3>
                <div class="flex-1">
                    <label for="numProgrammeHrs" class="block text-sm font-medium text-gray-700">Number of Programme Hours</label>
                    <input id="numProgrammeHrs" type="text"
                        class="w-full p-2 mt-2 border border-gray-300 rounded-md focus:ring-sky-500 focus:border-sky-500"
                        placeholder="Eg. 1980" />
                </div>
                <div class="flex-1">
                    <label for="numAdditionalHrs" class="block text-sm font-medium text-gray-700">Number of Additional Hours</label>
                    <input id="numAdditionalHrs" type="text"
                        class="w-full p-2 mt-2 border border-gray-300 rounded-md focus:ring-sky-500 focus:border-sky-500"
                        placeholder="Eg. 0" />
                </div>
            </div>

            <div class="mb-6 border p-4 border-sky-200 gap-4 flex rounded-md">
                <h3 class="text-md font-semibold w-28  text-sky-700 mb-2">Trainee Material</h3>
                <div class="flex-1">
                    <label for="trainingMaterial" class="block text-sm font-medium text-gray-700">Training Material</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="trainingMaterial" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 0" />
                    </div>
                </div>
            </div>

            <div class="flex gap-4 p-4 mb-6 border border-sky-200 rounded-md">
                <h3 class="text-md font-semibold text-sky-700 w-28  mb-2">Trainee Benefits</h3>
                <div class="flex-1">
                    <label for="traineeMedical" class="block text-sm font-medium text-gray-700">Trainee Medicals</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="traineeMedical" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 0.00" />
                    </div>
                </div>
                <div class="flex-1">
                    <label for="traineeWelfare" class="block text-sm font-medium text-gray-700">Trainee Welfare</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="traineeWelfare" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 332,742.15" />
                    </div>
                </div>
                <div class="flex-1">
                    <label for="traineeAllowance" class="block text-sm font-medium text-gray-700">Trainee Allowance</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="traineeAllowance" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 0.00" />
                    </div>
                </div>
            </div>

            <div class="flex gap-4 mb-6 p-4 border border-sky-200 rounded-md">
                <h3 class="text-md w-28 font-semibold text-sky-700 mb-2">Other Direct Expenses</h3>
                <div class="flex-1">
                    <label for="costFood" class="block text-sm font-medium text-gray-700">Food and Drinks</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="costFood" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 464,284.80" />
                    </div>
                </div>
                <div class="flex-1">
                    <label for="costTransport" class="block text-sm font-medium text-gray-700">Haulage and Transport</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="costTransport" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 28,000.00" />
                    </div>
                </div>
                <div class="flex-1">
                    <label for="costAwards" class="block text-sm font-medium text-gray-700">Other (Scholarship and Awards)</label>
                    <div class="relative mt-2 flex rounded-md shadow-sm">
                        <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$</span>
                        <input id="costAwards" type="text"
                            class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500"
                            placeholder="Eg. 2,500.00" />
                    </div>
                </div>
            </div>

        </div>


        <div id="step-3" class="step hidden">
            <h2 class="text-lg font-semibold text-gray-800 mb-4">Programme Overhead Cost</h2>

            <div id="pOverCostSummary" class="mb-6 p-4 bg-sky-50 border border-sky-200 rounded-md">
                <h3 class="text-md font-semibold text-sky-700 mb-2">Mini Summary</h3>
                <ul class="text-sm text-gray-800">
                    <li>(Institution)Total Programme Indirect Cost : $<span id="sInstiCost">0.00</span></li>
                    <li>(Support Services)Total Programme Overhead Cost: $<span id="sSupSerCost">0.00</span></li>
                    <li class="font-bold mt-2">Programme Overhead Cost: $<span id="sOverTotalCost">0.00</span></li>
                </ul>
            </div>


            <div class="flex gap-4 p-4 mb-6 border border-sky-200 rounded-md">
                <div class="flex-1">
                    <label for="oIAbsorptionRate" class="block text-sm font-medium text-gray-700" title="Institution">Total Programme Indirect Cost = OAR X ISH</label>
                    <label for="oIAbsorptionRate" class="block text-sm font-medium text-gray-700">= $<span id="iOAR">0.00</span>/hr X <span id="iISH"></span>hrs</label>
                    <div class="flex items-end space-x-2">
                        <div class="flex rounded-md mt-2 shadow-sm">
                            <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$ </span>
                            <input id="oIAbsorptionRate" type="text" onblur="updateFields(); enforceDecimalFormat(this)" oninput="formatFloatInput(this)" class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500" placeholder="Eg. 15,341,337.00" />
                        </div>
                    </div>
                </div>

                <div class="flex-1">
                    <label for="oSAbsorptionRate" class="block text-sm font-medium text-gray-700" title="Support Services">Total Programme Overhead Cost = OAR X SGS</label>
                    <label for="oSAbsorptionRate" class="block text-sm font-medium text-gray-700">= $<span id="sOAR">0.00</span>/student X <span id="sSGS"></span>students</label>
                    <div class="flex items-end mt-2 space-x-2">
                        <div class="flex rounded-md shadow-sm">
                            <span class="inline-flex items-center px-3 rounded-l-md bg-gray-100 text-gray-500 border border-gray-300">$ </span>
                            <input id="oSAbsorptionRate" type="text" onblur="updateFields(); enforceDecimalFormat(this)" oninput="formatFloatInput(this)" class="w-full p-2 border-t border-b border-r border-gray-300 rounded-r-md focus:ring-sky-500 focus:border-sky-500" placeholder="Eg. 1,551,898.00" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="step-4" class="step hidden">
            <h2 class="text-lg font-semibold text-gray-800 mb-4">Totals</h2>

            <fieldset>
                <h2 class="text-lg font-semibold text-gray-800 mb-4">Total Programme Cost</h2>
                <div id="tCostSummary" class="mb-6 p-4 bg-sky-50 border border-sky-200 rounded-md">
                    <ul class="text-sm text-gray-800">
                        <li>Total Programme Cost = Programme Direct Cost + Programme Overhead Cost</li>
                        <li>Total Programme Cost = $<span id="sumProgDCost">0.00</span> + $<span id="sumProgOCost">0.00</span></li>
                        <li class="font-bold mt-2">$<span id="calcTotalProgramme">0.00</span></li>
                    </ul>
                </div>
            </fieldset>

            <fieldset>
                <h2 class="text-lg font-semibold text-gray-800 mb-4">Per student</h2>
                <div id="tPerStudentSummary" class="mb-6 p-4 bg-sky-50 border border-sky-200 rounded-md">
                    <ul class="text-sm text-gray-800">
                        <li>Full Program Cost per Student</li>
                        <li>Unit Cost Per Student for Programme = Total programme Cost / SGS</li>
                        <li>Unit Cost Per Student for Programme = $<span id="sumTProgCost">0.00</span> / <span id="sumGroupSize"></span>students</li>
                        <li class="font-bold mt-2">Unit Cost Per Student for Programme $<span id="calcPerStudent">0.00</span></li>
                    </ul>
                </div>

                <div id="tProgInstruSummary" class="mb-6 p-4 bg-sky-50 border border-sky-200 rounded-md">
                    <ul class="text-sm text-gray-800">
                        <li>Unit Cost of Programme/ Instructional Hour</li>
                        <li>Unit Cost per Hr =Total Programme Cost/ISH</li>
                        <li>Unit Cost per Hr = $<span id="sumTPCost"></span> / <span id="sumISH"></span>hr</li>
                        <li class="font-bold mt-2">Unit Cost per Hr = $<span id="calcPerHr">0.00</span></li>
                    </ul>
                </div>

            </fieldset>
        </div>



        <div class="flex justify-between mt-6">
            <button id="previous" type="button" class="px-6 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 disabled:opacity-50 disabled:cursor-not-allowed">Previous</button>
            <button id="next" type="button" class="px-6 py-2 bg-sky-500 text-white rounded-lg hover:bg-sky-600">Continue</button>
        </div>
    </div>
                    <asp:HiddenField ID="hiddenHtmlContent" runat="server" />


    <div id="review-modal" class="hidden fixed inset-0 bg-gray-900 bg-opacity-75 flex items-center justify-center">
        <div id="review-summary" class="mt-8 max-h-[100vh]  overflow-y-auto bg-white p-8 border border-gray-300 rounded-md shadow-md">
            <div id="review-modall" class="max-w-4xl mx-auto bg-white p-8 border border-gray-300 rounded-md shadow-md">


                <div class="mb-4 text-center">
                    <h1 class="text-3xl font-bold text-sky-500">Programme Cost Summary</h1>
                    <div class="max-w-4xl mx-auto py-6 px-4 text-center">
                        <h1 id="sumProgTitle" class="text-2xl font-bold text-gray-800 uppercase">GENERAL CONSTRUCTION LEVEL 2</h1>
                        <p class="text-gray-600">Date Created: <%:DateTime.Now.ToShortDateString() %></p>
                    </div>
                </div>


                <div class="space-y-6">

                    <div class="border border-gray-300 rounded-md p-4">
                        <h2 class="text-lg font-semibold text-gray-700 mb-3">Programme Variables</h2>
                        <table class="w-full text-sm text-left text-gray-700 border-collapse">
                            <tbody>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Programme Length (Months):</td>
                                    <td class="py-2 border-b border-gray-200">12</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Programme Modality:</td>
                                    <td class="py-2 border-b border-gray-200">Online</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Student Group Size:</td>
                                    <td class="py-2 border-b border-gray-200">40 Students</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Instructional Hours:</td>
                                    <td class="py-2 border-b border-gray-200">1980 hrs</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Lecture Rate/Hour:</td>
                                    <td class="py-2 border-b border-gray-200">$1,848.35</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>


                    <div class="border border-gray-300 rounded-md p-4">
                        <h2 class="text-lg font-semibold text-gray-700 mb-3">Programme Direct Cost</h2>
                        <table class="w-full text-sm text-left text-gray-700 border-collapse">
                            <tbody>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Instructional Cost:</td>
                                    <td class="py-2 border-b border-gray-200">$250,000</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Training Material Cost:</td>
                                    <td class="py-2 border-b border-gray-200">$50,000</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Trainee Benefits:</td>
                                    <td class="py-2 border-b border-gray-200">

                                        <table class="w-full text-sm text-left text-gray-700">
                                            <tbody>
                                                <tr>
                                                    <td class="font-medium py-2 border-b border-gray-200">Trainee Medical:</td>
                                                    <td class="py-2 border-b border-gray-200">$20,000</td>
                                                </tr>
                                                <tr>
                                                    <td class="font-medium py-2 border-b border-gray-200">Trainee Welfare:</td>
                                                    <td class="py-2 border-b border-gray-200">$5,000</td>
                                                </tr>
                                                <tr>
                                                    <td class="font-medium py-2 border-b border-gray-200">Trainee Allowance:</td>
                                                    <td class="py-2 border-b border-gray-200">$5,000</td>
                                                </tr>
                                                <tr class="font-bold text-gray-800">
                                                    <td class="py-2 border-b border-gray-300">Total Trainee Benefits:</td>
                                                    <td class="py-2 border-b border-gray-300">$30,000</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Other Direct Expenses:</td>
                                    <td class="py-2 border-b border-gray-200">

                                        <table class="w-full text-sm text-left text-gray-700">
                                            <tbody>
                                                <tr>
                                                    <td class="font-medium py-2 border-b border-gray-200">Food & Drinks:</td>
                                                    <td class="py-2 border-b border-gray-200">$10,000</td>
                                                </tr>
                                                <tr>
                                                    <td class="font-medium py-2 border-b border-gray-200">Haulage & Transport:</td>
                                                    <td class="py-2 border-b border-gray-200">$5,000</td>
                                                </tr>
                                                <tr>
                                                    <td class="font-medium py-2 border-b border-gray-200">Others(Scholarship & Awards)
                                                        :</td>
                                                    <td class="py-2 border-b border-gray-200">$5,000</td>
                                                </tr>
                                                <tr class="font-bold text-gray-800">
                                                    <td class="py-2 border-b border-gray-300">Total Other Direct Expenses:</td>
                                                    <td class="py-2 border-b border-gray-300">$20,000</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr class="font-bold text-gray-800">
                                    <td class="py-2 border-b border-gray-300">Total Direct Cost:</td>
                                    <td class="py-2 border-b border-gray-300">$350,000</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>


                    <div class="border border-gray-300 rounded-md p-4">
                        <h2 class="text-lg font-semibold text-gray-700 mb-3">Programme Overhead Cost</h2>
                        <table class="w-full text-sm text-left text-gray-700 border-collapse">
                            <tbody>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">(Institution) Total Programme Indirect Cost:</td>
                                    <td class="py-2 border-b border-gray-200">$100,000</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">(Support Services) Total Programme Overhead Cost:</td>
                                    <td class="py-2 border-b border-gray-200">$50,000</td>
                                </tr>
                                <tr class="font-bold text-gray-800">
                                    <td class="py-2 border-b border-gray-300">Total Programme Overhead Cost:</td>
                                    <td class="py-2 border-b border-gray-300">$150,000</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>


                    <div class="border border-gray-300 rounded-md p-4">
                        <h2 class="text-lg font-semibold text-gray-700 mb-3">Totals</h2>
                        <table class="w-full text-sm text-left text-gray-700 border-collapse">
                            <tbody>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Total Programme Cost:</td>
                                    <td class="py-2 border-b border-gray-200">$500,000</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Cost Per Student:</td>
                                    <td class="py-2 border-b border-gray-200">$12,500</td>
                                </tr>
                                <tr>
                                    <td class="font-medium py-2 border-b border-gray-200">Cost Per Instructional Hour:</td>
                                    <td class="py-2 border-b border-gray-200">$252.53/hr</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="flex justify-end mt-6 space-x-4">
                <button id="editButton" type="button" class="px-6 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300">Edit</button>
                <asp:Button runat="server" ID="downloadButton" OnClick="downloadButton_Click" OnClientClick="return sendInnerHtmlToServer()" class="px-6 py-2 bg-sky-500 text-white rounded-lg hover:bg-sky-600" Text="Download Pdf" />
            </div>
        </div>
    </div>

    <script src="scripts/steps.js"></script>
</asp:Content>

<script src="/_files/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/_files/js/simp-captcha.js" type="text/javascript"></script>
<script src="/_files/js/jquery.validate.js"></script>
<script type="text/javascript">
    var goForm = function (form) {
        if (checkform(form)) {
            return $('#request_intern').valid();
        } else {
            return false;

        }
    };
    $(document).ready(function () {
        generateCode();
        $('#request_intern').validate({
            onsubmit: false,
            rules: {
                "majors_interested[]": {
                    required: true,
                    minlength: 1
                }
            },

            messages: {
                "majors_interested[]": "This field is required. Please select at least one major."
            },

            errorPlacement: function (label, element) {
                if (element.attr("name") === "majors_interested[]") {
                    element.parent().append(label);
                } else {
                    label.insertAfter(element);
                }
            },

            focusInvalid: false,
            invalidHandler: function (form, validator) {

                if (!validator.numberOfInvalids())
                    return;

                $('html, body').animate({
                    scrollTop: $(validator.errorList[0].element).offset().top
                }, 2000);

            }

        });
    });


</script>


<style type="text/css">
#formtable td {
    padding-top: 5px;
    padding-bottom: 5px;
    padding-right: 3px;
}
h3 {
    border-bottom: 1px maroon dotted;
}

</style>

               
				<form name="request_intern" method="POST" onsubmit="return goForm(this)" id="request_intern" action="<%=request.servervariables("script_name")%>" >
					<table style="width: 100%" id="formtable">
    					<tr>
							<td><p>* = required Field</p></td>
						</tr>						
                        <tr>
							<td>*Company Name:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Company_Name" size="50"></td>
						</tr>
                        
                        
                        
                        <!--  Added on 8/31/2015  -->
    					<tr>
							<td>Branch/Division:</td>
							<td style="width: 375px">
							<input type="text" 
								name="Branch_Division" size="50"></td>
						</tr>
                        
                        
                        
                        
						<tr>
							<td>*Company Street Address:</td>
							<td style="width: 375px">
							<input class="required" type="text" name="Street_Adress" 
								size="45"></td>
						</tr>
						<tr>
							<td>*Company City: </td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Company_City" size="50" 
								style="width: 192px"></td>
						</tr>
						<tr>
							<td>*State:</td>
							<td style="width: 375px">
							<input class="required" type="text" name="State" size="11"></td>
						</tr>
						<tr>
							<td>*Zip:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Zip" size="14" maxlength="10"></td>
						</tr>
						<tr>
							<td>*Contact Person:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Contact_Person" size="62" 
								style="width: 192px"></td>
						</tr>
                        
                        
                        
                        <!--  Added on 8/31/2015  -->
    					<tr>
							<td>*Salutation:</td>
							<td style="width: 375px">
    						<select class="required" size="1" name="Salutation">
							<option selected="" disabled="disabled">Choose one</option>
							<option>Miss</option>
							<option>Ms.</option>
							<option>Mrs.</option>
    						<option>Mr.</option>
                            <option>Dr.</option></td>
						</tr>
                        
                        
                        
                        
						<tr>
							<td>*Contact Person Title:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Contact_Person_Title" size="44"></td>
						</tr>
                        
                        
                        
                        <!--  Added on 8/31/2015  -->
    					<tr>
							<td>*Contact Person Department:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Contact_Person_Dept" size="44"></td>
						</tr>
						
						
						
						<!--  Added on 1/12/2015  -->
						<tr>
							<td style="height: 45px">*Will you be the student's supervisor?</td>
							<td style="height: 45px; width: 375px;">
							<input class="required" type="radio" name="Will_you_be_the_students_supervisor" 
								value="no"> No<br>
							<input class="required" type="radio" name="Will_you_be_the_students_supervisor" 
								value="yes"> Yes
							</td>
						</tr>
						<tr>
							<td style="height: 45px">If no, then list the name of the person who will be supervising the student intern</td>
							<td style="height: 45px; width: 375px;">
							<input type="text" 
								name="Supervisor_Name" size="62" style="width:192px" maxlength="64">							
							</td>
						</tr>
						
						
						
						
						
						<tr>
							<td>*Telephone Number:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Phone" size="23"></td>
						</tr>
						<tr>
							<td>Fax: </td>
							<td style="width: 375px">
							<input type="text" 
								name="Fax" size="25"></td>
						</tr>
						
						
						<!--  Added on 1/12/2015  -->
						<tr>
							<td>*Email:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Email" size="49" 
							></td>
						</tr>
						
						
						
						<tr>
							<td>*Company Website Address:</td>
							<td style="width: 375px">
							<input class="required" type="text" name="Web_site" 
								size="54" style="width: 223px"></td>
						</tr>
						<tr>
							<td>*Company Ownership Type:</td>
							<td style="width: 375px">
							<select class="required" size="1" name="Ownership_type">
							<option selected="" disabled="disabled">Choose one</option>
							<option>Non-Profit</option>
							<option>Profit</option>
							<option>Private</option>
							<option>Government</option>
							</select></td>
						</tr>
						<tr>
							<td style="height: 69px">*Is this a home-based business?
								</td>
							<td style="height: 69px; width: 375px;">
							<input class="required" type="radio" name="Homebased" 
								value="no"> No<br>
							<input class="required" type="radio" name="Homebased" 
								value="yes"> Yes<br>
								(Please review our 
							<a target="_blank" 
								href="home_based_business_policy.htm">policy</a> relating to home-base business settings.)</td>
						</tr>
						<tr>
							<td>*Industry Classification:</td>
							<td style="width: 375px">
                            <select class="required" name="Industry_Classification">
							</select>  <br>Select from the drop-down menu</td>
						</tr>
						<tr>
							<td>Employer Size:</td>
							<td style="width: 375px">
							<select size="1" name="Size">
							<option selected="" disabled="disabled">Choose one</option>
							<option>from 1 to 20 employees</option>
							<option>from 21 to 50 employees</option>
							<option>from 51 to 100 employees</option>
							<option>from 101 to 500 employees</option>
							<option>over 500 employees</option>
							</select></td>
						</tr>
						<tr>
							<td style="height: 29px"></td>
							<td style="width: 375px; height: 29px;"></td>
						</tr>
						<tr>
							<td>*Semesters internship <span style="color: black">
							is</span> 
								available:</td>
							<td style="width: 375px">
							<select class="required" size="1" 
								name="Semesters_intern_needed">
							<option selected="" disabled="disabled">Choose one</option>
							<option>Fall</option>
							<option>Spring</option>
							<option>Summer</option>
							<option>All semesters</option>
							</select></td>
						</tr>
						<tr>
							<td>*Approximate hours intern will work
								per week:</td>
							<td style="width: 375px">
							<input class="required" type="text" 
								name="Approximate_hours_per_week" size="6"></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						
						
						
						<!--  Added on 1/12/2015  -->
						<tr>
							<td colspan="2">*Has your company previously hosted an intern from the Perdue School of Business?</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 89px">
							<p style="margin-left: 20px">
							<input class="required" type="radio" name="Previously_hosted_an_intern" 
								value="no"> No, this is my first request for an intern<br>
							<input class="required" type="radio" name="Previously_hosted_an_intern" 
								value="yes" style="height: 20px; margin-top:6px"> Yes, student name:
							&nbsp;&nbsp;
							<input type="text" 
								name="Previously_hosted_interns_name" size="62" style="width:192px; margin-top:6px"></p>
							
						</tr>
						<tr>
							<td colspan="2">Have you supervised an intern in the past?</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 89px">
							<p style="margin-left: 20px">
							<input type="radio" name="Previously_supervised_an_intern" 
								value="no"> No, this is my first request for an intern<br>
							<input type="radio" name="Previously_supervised_an_intern" 
								value="yes" style="margin-top:6px"> Yes, student name: 
								&nbsp;&nbsp;
							<input type="text" 
								name="Previously_supervised_interns_name" size="62" style="width:192px; margin-top:6px"></p>

							</td>
						</tr>
						<tr>
							<td colspan="2">Would you like to receive 
							material/information from our Career Services 
							Department regarding activities and Job fair events?<strong>&nbsp;
							</strong></td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<select size="1" 
								name="Receive_Career_Services_job_fair_info">
							<option selected="" disabled="disabled">Choose one</option>
							<option>Yes</option>
							<option>No</option>
							</select></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p>Would you like to participate in any 
								of the following events with Career Services?</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Participate_with_Career_Services" 
								value="No I would not like to participate" style="height: 20px"> No, I would not like to participate
								<br>
							</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Conduct_info_sessions" 
								value="I would like to conduct information sessions on campus"> I 
								would like to conduct information sessions on campus<br>
							</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Guest_speaker_career_classes" 
								value="I would like to be a guest speaker in a career development class"> I 
								would like to be a guest speaker in a career development 
								class<br>
							</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
 								name="Guest_speaker_other" 
								value="I would like to be a guest speaker in other academic classes"> I 
								would like to be a guest speaker in other academic 
								classes (undergrad or graduate)<br>
							</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Host_a_tour" 
								value="I would like to host a tour of my facility"> I 
								would like to host a tour of my facility</p>
							</td>
						</tr>
						<tr>
							<td colspan="2">*Please provide a brief overview 
								of your organization:<strong><br>
							</strong><br>
							<textarea class="required" name="Company_overview" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="width: 375px">&nbsp;</td>
						</tr>
						
						<!--  Added on 1/12/2015  -->
						<tr>
							<td colspan="2">
							<h3>*Intern's Job Title:</h3>
							</td>
						</tr>
						
						<tr>
							<td colspan="2">
							<input class="required" type="text" 
								name="Intern's_Job_title" size="60"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="width: 375px">
							&nbsp;</td>
						</tr>
					</table>
					<table style="width: 100%">
						<tr>
							<td colspan="2">
							<h3>*Internship Responsibilities</h3>
							</td>
						</tr>
						<tr>
							<td colspan="2"><strong>Mission Statement
								</strong>(The overarching reason for bringing interns 
								into your organization)</td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea class="required" name="Mission_statement_for_internship" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
                        
                        
                        
                        <!--  Added on 8/31/2015  -->
    					<tr>
							<td colspan="2">
							<h3>*Qualifications:</h3>
							</td>
						</tr>
						
						<tr>
							<td colspan="2">
							<textarea class="required" name="Qualifications" 
    						 rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="width: 375px">
							&nbsp;</td>
						</tr>

                        
                        
						<tr>
							<td colspan="2">
							<h3>Internship Activities/Duties: </h3>
							
							<!--  Added 1/12/2015  -->
							<p>Note: 80 - 90% of the duties must be related to 
							student's major</p>
							
							<p>(Learning/work activities for the student. Can be 
								a mix from several major categories. Organizations 
								are encouraged to add your own descriptors in the 
								&quot;Other&quot; text boxes) </p>
							<h3>Management (MGMT)</h3>
							</td>
						</tr>
						<tr>
							<td colspan="2">Choose the learning activities relevant to your organization&#39;s internship by 
								clicking on the radio buttons that apply to the 
								internship you have to offer. We encourage organizations 
								to enter additional learning activities more specific 
								to <i>your opportunity</i> using the Other 
							activities text boxes.<br>
							</td>
						</tr>
						
						
						<!--  Added 1/12/2015  -->
						<!--<tr>
							<td colspan="2"><p>Click <a target="_blank" href="">here</a> for a sample MGMT job description (PDF file)</p></td>
						</tr>-->
						
						
						
						<tr>
							<td colspan="2">
							<p><strong>Common <span style="color: maroon">Management 
								major </span>activities:</strong></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="text-align: left; margin-left: 20px">
							<input type="checkbox" 
								value="*Develop an entrepreneurial business mentality" 
								name="Management_Entrepreneurial"> Develop 
								an entrepreneurial business mentality.</p>
							<p style="text-align: left; margin-left: 20px">
							<input type="checkbox" 
								name="Management_employee_performance" 
								value="*Experience how major companies rate and communicate employee performance"> Experience 
								how major companies rate and communicate employee 
								performance.</p>
							<p style="text-align: left; margin-left: 20px">
							<input type="checkbox" 
								name="Management_witness_ethics" 
								value="*Witness ethics, compliance and business conduct issues pertaining to our industry"> Witness 
								ethics, compliance and business conduct issues pertaining 
								to our industry.</p>
							<p style="text-align: left; margin-left: 20px">
							<input type="checkbox" 
								name="Management_learn_time_management" 
								value="*Learn time management requirements when working with individual agents or teams."> Learn 
								time management requirements when working with individual 
								agents or teams.</p>
							<p style="text-align: left; margin-left: 20px">
							<input type="checkbox" name="Management_budget" 
								value="*Manage a budget along with the firm's director and help to move the department to a neutral cost burden within the firm"> Manage 
								a budget along with the firm&#8217;s director (or designee) 
								and help to move the department to a neutral cost 
								burden within the firm</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><strong>Other activities as described 
								below:</strong></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Management_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2">
							<h3>Marketing (MKTG)</h3>
							
							<!--  Added 1/12/2015  -->
							<!--<p>Click <a target="_blank" href="">here</a> for a sample MKTG job description (PDF file)</p>
							-->
							
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p><b>Common <span style="color: maroon">Marketing 
								major</span> activities:</b></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_target_markets" 
								
							value="*Learn the needs of the small business and individual target markets"> Learn the needs of the small business 
								and individual target markets.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_apply_skills_and_tactics" 
								value="*Learn how to apply marketing skills and tactics"> Learn 
								how to apply marketing skills and tactics.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Marketing_tracking" 
								value="*Learn marketing tracking techniques"> Learn 
								marketing tracking techniques.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Marketing_campaigns" 
								value="*Develop and coordinate mailing campaigns"> Develop 
								and coordinate mailing campaigns.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_event_planning" 
								value="*Learn the elements of and assist in the execution of event planning for clients and prospects"> Learn 
								the elements of and assist in the execution of event 
								planning for clients and prospects.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_market_research" 
								value="*Experience the necessity of detailed market research"> Experience 
								the necessity of detailed market research.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_data_information" 
								value="*Learn and manage a firm wide database information system to execute specific local campaigns and initiatives"> Learn 
								and manage a firm wide database information system 
								to execute specific local campaigns and initiatives.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Marketing_strategies" 
								value="*Become familiar with our software programs and current marketing strategies and materials"> Become 
								familiar with our software programs and current 
								marketing strategies and materials.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_planning_management" 
								value="*Develop competencies in market planning and plan management"> Develop 
								competencies in market planning and plan management.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_client_development" 
								value="*Work with the firm&#8217;s unassigned client base in developing communication tactics"> Work 
								with the firm&#8217;s unassigned client base in developing 
								communication tactics.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Marketing_additional_duties" 
								value="*Report directly to the firm&#8217;s Marketing Director for additional marketing related duties"> Report 
								directly to the firm&#39;s Marketing Director (or designee) 
								for additional marketing related duties.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Marketing_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2"><h3>Accounting (ACCT)</h3>
							<!--  Added 1/12/2015  -->
							<p>Click <a target="_blank" href="../PDF Files/Sample_Internship_Job_Descr-ACCT.pdf">here</a> for a sample ACCT job description (PDF file)</p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="text-align: left"><b>Common
								<span style="color: maroon">Accounting major</span> 
								activities:</b></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" name="Accounting_software" 
								
							value="*Learn accounting software by assisting in the full implementation of the software"> Learn accounting software by assisting 
								in the full implementation of the software.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_accounts_receivable" 
								value="*Learn billing software and how it is integrated into an accounts receivable component"> Learn 
								billing software and how it is integrated into an 
								accounts receivable component.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_prepare_statements" 
								value="*Learn how to prepare all financial statements for external and internal reporting"> Learn 
								how to prepare all financial statements for external 
								and internal reporting.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Accounting_tax_returns" 
								value="*Assist with preparation of annual tax return and single audit requirements of the Federal Government"> Assist 
								with preparation of annual tax return and single 
								audit requirements of the Federal Government.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_insurance_billing" 
								value="*Learn fundamental accounting for 3rd party insurance billing, accounting for government contracts (cost reimbursement and unit cost), and accounting for MOU's and MOA's"> Learn 
								fundamental accounting for 3rd party insurance billing, 
								accounting for government contracts (cost reimbursement 
								and unit cost), and accounting for MOU&#39;s and MOA&#39;s.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Accounting_payroll" 
								value="*Learn payroll tax accounting by pay period, monthly, and annually which will include filing of W-2 and tax reconciliations"> Learn 
								payroll tax accounting by pay period, monthly, and 
								annually which will include filing of W-2 and tax 
								reconciliations.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_accounts_payable" 
								value="*Assume responsibility for accounts payable process using our software program including the classification of invoices for payment and processing check requests "> Assume 
								responsibility for accounts payable process using 
								our software program including the classification 
								of invoices for payment and processing check requests.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_cashflow_Management" 
								value="*Learn cash management and cash flow analysis for management review team"> Learn 
								cash management and cash flow analysis for management 
								review team.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_reconciliations" 
								value="*Learn bank statement reconciliation process on a daily and monthly basis through utilization of on line banking software"> Learn 
								bank statement reconciliation process on a daily 
								and monthly basis through utilization of on-line 
								banking software.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Accounting_general_principles_practices" 
								value="*Understand how generally accepted accounting principles and practices are integrated into day to day practical business enterprise environment"> Understand 
								how generally accepted accounting principles and 
								practices are integrated into day to day practical 
								business enterprise environment.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Accounting_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>						
						</tr>
						<tr>
							<td colspan="2"><h3>Economics (ECON)</h3>
							
							<!--  Added 1/12/2015  -->
							<p>Click <a target="_blank" href="../PDF Files/Sample_Internship_Job_Descr-Bus_ECON.pdf">here</a> for a sample ECON job description (PDF file)</p>
							
							</td>						
						</tr>
						<tr>
							<td colspan="2" style="height: 21px">
							<p><strong>Common<span style="color: #800000"> Economics major</span> activities</strong><span 
								style="color: #800000"><strong> </strong></span>:</p>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 21px"><b>Product/Service</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_1" 
								value="*Collect and analyze data"> Collect and 
							analyze data</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_2" 
								value="*Perform data analysis in Microsoft Excel (and/or 
							other statistical software packages)"> 
							Perform data analysis in Microsoft Excel (and/or 
							other statistical software packages)</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_3" 
								value="Present data in formats that make summary findings 
							easy to understand (such as bar charts, pie charts, 
							time series lots, etc.)"> 
							Present data in formats that make summary findings 
							easy to understand (such as bar charts, pie charts, 
							time series lots, etc.)</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_4" 
								value="*Learn and develop skills to provide written reports 
							on firm performance relative to other related firms 
							in the industry"> 
							Learn and develop skills to provide written reports 
							on firm performance relative to other related firms 
							in the industry</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_5" 
								value="*Assist in analyzing impact of economic environment 
							on firm performance"> 
							Assist in analyzing impact of economic environment 
							on firm performance</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_6" 
								value="*Apply economic critical thinking skill"> 
							Apply economic critical thinking skill</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_7" 
								value="*Data analysis using econometrics approach as well as 
							business statistics"> 
							Data analysis using econometrics approach as well as 
							business statistics</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_8" 
								value="*Connect individual business tasks with big economic 
							picture"> 
							Connect individual business tasks with big economic 
							picture</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_9" 
								value="*Write report on economic analysis"> 
							Write report on economic analysis</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_10" 
								value="*Present economic analysis in business-oriented 
							format"> 
							Present economic analysis in business-oriented 
							format</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Economics_11" 
								value="*Develop business project with economic insight"> 
							Develop business project with economic insight<br>
							</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Economics_product_service_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>

						<tr>
							<td colspan="2"><h3>Finance (FINA)</h3>
							<!--  Added 1/12/2015  -->
							<p>Click <a target="_blank" href="../PDF Files/Sample_Internship_Job_Descr-FINA-financial_planning.pdf">here</a> for a sample FINA - Financial Planning/Investments job description (PDF file)</p>
							<!--  Added 1/12/2015  -->
							<p>Click <a target="_blank" href="../PDF Files/Sample_Internship_Job_Descr-FINA-corp_&_other.pdf">here</a> for a sample FINA - Corporate job description (PDF file)</p>
							</td>						
						</tr>
						<tr>
							<td colspan="2" style="height: 17px">
							<p><b>Common <span style="color: #800000">Finance 
								major </span>activities<span 
								style="font-family: Arial, Helvetica, sans-serif">:</span></b></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_stock_research" 
								
							value="*Prepare research reports on publicly traded common stocks as assigned by the intern's supervisor"> Prepare research reports on publicly 
								traded common stocks as assigned by the intern&#39;s 
								supervisor</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Finance_corp_bonds" 
								value="*Prepare an evaluation of corporate bond ratings as assigned by the intern&#8217;s supervisor"> Prepare 
								an evaluation of corporate bond ratings as assigned 
								by the intern&#39;s supervisor.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_municipal_bonds" 
								value="*Prepare an evaluation of municipal bond ratings as assigned by the intern&#8217;s supervisor"> Prepare 
								an evaluation of municipal bond ratings as assigned 
								by the intern&#8217;s supervisor.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_account_review" 
								value="*Assist with account reviews and preparation for account reviews"> Assist 
								with account reviews and preparation for account 
								reviews.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_client_portfolio" 
								value="*Updating client portfolio values, returns, risk statistics"> Update 
								client portfolio values, returns, risk statistics.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Finance_gains_losses" 
								value="*Develop Excel spreadsheets to show current Realized/Unrealized gains/losses"> Develop 
								Excel spreadsheets to show current Realized/Unrealized 
								gains/losses.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_diversification" 
								value="*Gain understanding of portfolio diversification (i.e. fixed income, equities)"> Gain 
								understanding of portfolio diversification (i.e. 
								fixed income, equities).</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Finance_escrow" 
								value="*Learn the duties of an escrow accounting department"> Learn 
								the duties of an escrow accounting department.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_reconciliations" 
								value="*Assist with balancing cases, preparing checks, disbursing checks and reconciling escrow bank accounts"> Assist 
								with balancing cases, preparing checks, disbursing 
								checks and reconciling escrow bank accounts.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Finance_settlements" 
								value="*Learn duties in preparation of settlement statement.&nbsp;&nbsp;"> Learn 
								duties in preparation of settlement statement.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Finance_banking_lenders" 
								value="*Communicate with lenders to coordinate pre-closing and post-closing activities"> Communicate 
								with lenders to coordinate pre-closing and post-closing 
								activities.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Finance_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>						
						</tr>
						<tr>
							<td colspan="2"><h3>Information Systems (INFO)</h3>
							
							<!--  Added 1/12/2015  -->
							<p>Click <a target="_blank" href="../PDF Files/Sample_Internship_Job_Descr-INFO.pdf">here</a> for a sample INFO job description (PDF file)</p>
							
							</td>						
						</tr>
						<tr>
							<td colspan="2">
							<p><b>Common <span style="color: maroon">Information 
								Systems major</span> activities:</b></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_general_skills" 
								
							value="*Learn and develop skills in information technology to include networking of computers, system wide back up of data, and off-site storage of data"> Learn and develop skills in information 
								technology to include networking of computers, system 
								wide back up of data, and storage of data.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_design_programming" 
								value="*Develop skills to communicate with IT professionals who specialize in Systems Software Design Engineering and Computer Programming"> Develop 
								skills to communicate with IT professionals who 
								specialize in Systems Software Design Engineering 
								and Computer Programming.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Information_Systems_maintenance" 
								value="*Assist staff in performing system backup and maintenance functions"> Assist 
								staff in performing system backup and maintenance 
								functions.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_installations" 
								value="*Assist in installation of PC hardware and software"> Assist 
								in installation of PC hardware and software.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_troubleshooting" 
								value="*Assist in network and hardware troubleshooting "> Assist 
								in network and hardware troubleshooting.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Information_Systems_upgrades" 
								value="*Assist in performing preventative maintenance and upgrades on servers"> Assist 
								in performing preventative maintenance and upgrades 
								on servers.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_project_assistant" 
								value="*Assist Network Engineer with current projects."> Assist 
								Network Engineer (or designee) with current projects.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_special_projects" 
								value="*Perform special projects as determined by the information systems staff"> Perform 
								special projects as determined by the information 
								systems staff.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_needs_assessment_solution_research" 
								value="*Assist in needs analysis for projects; in research for solutions for needs"> Assist 
								in needs analysis for projects; in research for 
								solutions for needs.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_documentation" 
								value="*Assist in updating user and technical documentation. "> Assist 
								in updating user and technical documentation.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_database_applications" 
								value="*Assist in the maintenance and performance tuning of application databases"> Assist 
								in the maintenance and performance tuning of application 
								databases.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Information_Systems_publishing" 
								value="*Create and publish interactive reports. "> Create 
								and publish interactive reports.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_intranet_functions" 
								value="*Assist in managing, maintaining, developing, designing and updating the intranet"> Assist 
								in managing, maintaining, developing, designing 
								and updating the intranet.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_web_management" 
								value="*Assist with the Web Content Management System for our public website"> Assist 
								with the Web Content Management System for our public 
								website.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="Information_Systems_help_desk" 
								value="*Gain hands on practical experience to the full gamut of Help Desk roles and responsibilities"> Gain 
								hands on practical experience to the full gamut 
								of Help Desk roles and responsibilities.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Information_Systems_troubleshoot_desktops" 
								value="*Run calls to troubleshoot desktop problems for Macintosh and PC computers">Run 
								calls to troubleshoot desktop problems for Macintosh 
								and PC computers.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Information_System_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>						
						</tr>
						<tr>
							<td colspan="2"><h3>International Business (INTB)</h3>
							
							<!--  Added 1/12/2015  -->
							<p>Click <a target="_blank" href="../PDF Files/Sample_Internship_Job_Descr-INTB.pdf">here</a> for a sample INTB job description (PDF file)</p>
							
							</td>						
						</tr>
						<tr>
							<td colspan="2">
							<p><b>Common <span style="color: maroon">International Business major</span> activities:</b></p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_general_skills" 
								
							value="*Develop an entrepreneurial business mentality"> Develop an entrepreneurial business mentality.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_witness_ethics" 
								value="*Witness ethics, compliance and business conduct issues pertaining to our industry"> Witness ethics, 
								compliance and business conduct issues pertaining to our industry.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="International_Business_time_management" 
								value="*Learn time management requirements when working with individual agents or teams"> Learn time 
								management requirements when working with individual agents or teams.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_small_business" 
								value="*Learn the needs of the small business and individual target markets"> Learn the 
								needs of the small business and individual target markets.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_skills_tactics" 
								value="*Learn how to apply marketing skills and tactics"> Learn 
								how to apply marketing skills and tactics.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="International_Business_tracking_techniques" 
								value="*Learn marketing tracking techniques"> Learn 
								marketing tracking techniques.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_mailing_campaigns" 
								value="*Develop and coordinate mailing campaigns"> Develop 
								and coordinate mailing campaigns.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_Experience" 
								value="*Experience the necessity of detailed market research; understand marketing research methodology
								to help support new marketing initiatives and targeted campaigns"> Experience the necessity of detailed 
								market research; understand marketing research methodology
								to help support new marketing initiatives and targeted campaigns.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_database_information_system" 
								value="*Learn and manage a firm wide database information system to execute specific local campaigns and initiatives"> Learn 
								and manage a firm wide database information system to execute specific local campaigns and initiatives.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_software_strategies" 
								value="*Become familiar with our software programs and current marketing strategies and materials"> Become 
								familiar with our software programs and current marketing strategies and materials.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_competencies" 
								value="*Develop competencies in market planning and plan management"> Develop 
								competencies in market planning and plan management.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" name="International_Business_communication_tactics" 
								value="*Work with the firms unassigned client base in developing communication tactics"> Work 
								with the firms unassigned client base in developing communication tactics.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="International_Business_understanding_global_company" 
								value="*Gain a thorough knowledge and understanding of sales and marketing practice for a global company"> Gain a 
								thorough knowledge and understanding of sales and marketing practice for a global company.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_International_Business_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>

						<tr>
							<td colspan="2" style="height: 21px">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 21px">
							<p><strong>Common<span style="color: #800000"> Generalized 
								activities</span></strong><span 
								style="color: #800000"><strong> </strong></span>(can be used for all majors):</p>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 21px"><b>Product/Service</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="product_service_market" 
								value="*Understand the basic target marketing of (product or service)"> Understand the basic target marketing 
								of (product or service).</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="product_service_knowledge" 
								value="*Gain substantial knowledge into our industry/field/product or service)"> Gain 
								substantial knowledge into our industry/field/product 
								or service.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_product_service_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2">
							<p><b>Common <span style="color: maroon">Personal 
								Development</span> activities </b>(can be used for 
								all majors):</p>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Personal_Skills_develop_organizational_skills" 
								value="*Develop planning, organizational and time management skills"> Develop planning, organizational and 
								time management skills.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Personal_Skills_develop_technology_skills" 
								value="*Increase knowledge of computer skills and technology"> Increase 
								knowledge of computer skills and technology.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Personal_Skills_develop_teamwork" 
								value="*Develop team-based work competencies"> Develop 
								team-based work competencies.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Personal_Skills_develop_communication_internal" 
								value="*Develop interpersonal skills in order to communicate with employees"> Develop 
								interpersonal skills in order to communicate with 
								employees.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Personal_Skills_develop_interpersonal_phone_skills" 
								value="*Develop interpersonal skills in order to communicate with day-to-day business contacts through follow up calls "> Develop 
								interpersonal skills in order to communicate with 
								day-to-day business contacts through follow up calls.</p>
							<p style="margin-left: 20px">
							<input type="checkbox" 
								name="Personal_Skills_develop_communications_external" 
								value="*Develop interpersonal skills in order to communicate with external clients"> Develop 
								interpersonal skills in order to communicate with 
								external clients.</p>
							</td>
						</tr>
						<tr>
							<td colspan="2"><b>Other activities as described 
								below:</b></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea name="Other_Personal_Skills_develop_activities" 
								rows="10" cols="65"></textarea></td>
						</tr>
						<tr>
							<td style="width: 366px">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2"><b>*Program Incentive </b><i>(Something 
								unique about your organization that you can offer 
								to entice the students to apply to your opportunity!)</i></td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea class="required" name="Program_Incentives" 
								rows="10" cols="65"></textarea></td>
						</tr>
					</table>
					<table style="width: 100%">
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
					<h3><b>Selection Criteria </b></h3>
					<p><i>(What kind of student are 
						you looking for?)</i></p>
					<table style="width: 100%">
						<tr>
							<td style="width: 448px"><strong>*Student status:
								</strong>&nbsp; </td>
							<td>
							<select class="required" size="1" 
								name="Student_status_requested">
							<option selected="" disabled="disabled">Choose one</option>
							<option>Junior</option>
							<option>Senior</option>
							<option>Junior or Senior</option>
							</select></td>
						</tr>
						<tr>
							<td style="width: 448px">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2"><strong>*Majors you think would be 
								appropriate for the learning/work activities:</strong>
                            
                            
                            <!--  Added 8/31/2015  -->
    						<p>Note: Choose major based on 80 - 90% of what the internship duties imply</p>
                            
                                
                            </td>
						</tr>
                        <tr>
							<td colspan="2">
                                <div style="margin-left: 20px">
							        <input type="checkbox" name="majors_interested[]"
								        value="Accounting_major"> Accounting<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="Economics_major"> Economics<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="Finance_major"> Finance<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="Financial_planning_major"> Financial Planning interest<br /><br />
							        <input type="checkbox" name="majors_interested[]" 
								        value="Human_Resources_interest"> Human Resources Interest<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="Information_Systems_major"> Information Systems<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="International_Business_major"> International Business<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="Management_major"> Management<br /><br />
							        <input type="checkbox" name="majors_interested[]"
								        value="Marketing_major"> Marketing<br /><br />
                                </div>
							</td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 448px"><b>*Work Schedule</b><br>
							(hours/days 
								the student will work): </td>
							<td>
							<input class="required" type="text" name="work_schedule" 
								size="45" style="width: 220px"></td>
						</tr>
						<tr>
							<td style="width: 448px">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 448px"><strong>*Compensation</strong><span 
								style="color: #000000">:<br>
							</span>(paid or not paid - up to the organization)</td>
							<td>
							<select class="required" size="1" name="Compensation">
							<option selected="" disabled="disabled">Choose one</option>
							<option>Paid</option>
							<option>Not Paid</option>
							<option>Other</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2">
								<br>If internship is <b>not paid</b>, please refer to the <a target="_blank" href="http://www.dol.gov/whd/regs/compliance/whdfs71.pdf">DOL guidelines regarding unpaid internships</a>.
							</td>
						</tr>
						<tr>
							<td style="width: 448px"><br><strong>Other means of 
								compensation:</strong></td>
							<td><i>
							<br><input type="text" 
								name="Other_compensation" size="45" style="width: 269px"></i></td>
						</tr>
						<tr>
							<td colspan="2">For unpaid intern: required minimum for students to intern is 10 hours per week<br>
							<br>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="padding-bottom:20px;"><b>Please consider being an employer for our <a class="noicon" target="_blank" href="https://docs.google.com/spreadsheets/d/1cncwNUG6E4_4klJ8HZ7cQ2bBUXh8qgt4-J0Gzyxsddo/edit?usp=sharing">
                                "Business in the Atrium" series</a>.  
                                It is an informal networking and information sharing opportunity that will give you some 
                                face time with business students.  It takes place in the lobby of Perdue Hall from 11am- 2pm 
                                on a day you select, and it's free!</b><br></td>
						</tr>
						<tr>
							<td colspan="2">To finalize your submission, click 
								on the Submit Your Intern Request form button below. The 
								completed form will be emailed to the ABLE Internship 
								office to be processed and shared with the appropriate department(s).
								If approved to post, your opportunity will be made available for students view and respond.</td>
						</tr>
                        <tr>
							<td colspan="2">&nbsp;</td>
						</tr>
                        <tr>
                            <td>
                                <b>Enter code to prove you are not a robot: </b>
<span id="txtCaptchaDiv" style="color:#000;padding:5px"></span>

<input type="hidden" id="txtCaptcha" />
                            </td>
                            <td>
                                <input type="text" name="txtInput" id="txtInput" size="15" />
                            </td>
                        </tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center">
							<span style="font-family: Arial, Helvetica, sans-serif">
							<input type="hidden" name="Date" value="<%=Now()%>">
							<input type="submit" 
						value="Submit Your Intern Request form" name="submit"><br>
							<br></span>
							Next page will show a summary of your request, It is recommended that you print/save a copy for 
							your records.</td>
						</tr>
					</table>
					<div name="div" style="display: none" id="formdiv">
						<span style="font-family: Arial, Helvetica, sans-serif">
						<input type="text" name="m_m_name"> 
						
						</span></div>
</form>

<%
end if
%>
				<p style="text-align: center">* * *</p>



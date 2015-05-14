<%@ page import="thinktank.taylors.Candidate" %>



<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="candidate.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="20" required="" value="${candidateInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="candidate.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="30" required="" value="${candidateInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="candidate.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${candidateInstance?.birthdate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="candidate.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" maxlength="20" required="" value="${candidateInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="candidate.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="30" required="" value="${candidateInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="candidate.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" maxlength="2" required="" value="${candidateInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="candidate.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" maxlength="5" required="" value="${candidateInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="candidate.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${candidateInstance?.emailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="candidate.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" maxlength="10" required="" value="${candidateInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'skills', 'error')} required">
	<label for="skills">
		<g:message code="candidate.skills.label" default="Skills" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="skills" maxlength="100" required="" value="${candidateInstance?.skills}"/>

</div>


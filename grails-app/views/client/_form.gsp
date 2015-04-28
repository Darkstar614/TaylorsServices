<%@ page import="thinktank.taylors.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="client.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" maxlength="20" required="" value="${clientInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'summary', 'error')} ">
	<label for="summary">
		<g:message code="client.summary.label" default="Summary" />
		
	</label>
	<g:textArea name="summary" cols="40" rows="5" maxlength="500" value="${clientInstance?.summary}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="client.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" maxlength="20" required="" value="${clientInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="client.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="30" required="" value="${clientInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="client.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" maxlength="2" required="" value="${clientInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="client.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" maxlength="5" required="" value="${clientInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="client.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${clientInstance?.emailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="client.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" maxlength="10" required="" value="${clientInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'partnersSince', 'error')} required">
	<label for="partnersSince">
		<g:message code="client.partnersSince.label" default="Partners Since" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="partnersSince" precision="day"  value="${clientInstance?.partnersSince}"  />

</div>


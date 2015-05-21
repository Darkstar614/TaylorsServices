<%@ page import="thinktank.taylors.Request" %>



<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'candidateId', 'error')} required">
	<label for="candidateId">
		<g:message code="request.candidateId.label" default="Candidate Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="candidateId" required="" value="${requestInstance?.candidateId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'clientId', 'error')} required">
	<label for="clientId">
		<g:message code="request.clientId.label" default="Client Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clientId" required="" value="${requestInstance?.clientId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'dateRequested', 'error')} required">
	<label for="dateRequested">
		<g:message code="request.dateRequested.label" default="Date Requested" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateRequested" precision="day"  value="${requestInstance?.dateRequested}"  />

</div>


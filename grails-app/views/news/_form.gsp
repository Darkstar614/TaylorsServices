<%@ page import="thinktank.taylors.News" %>



<div class="fieldcontain ${hasErrors(bean: newsInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="news.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="20" required="" value="${newsInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: newsInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="news.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="80" rows="10" maxlength="255" required="" value="${newsInstance?.content}"/>

</div>

<div id="datePicker" class="fieldcontain ${hasErrors(bean: newsInstance, field: 'postDate', 'error')} required">
	<label for="postDate">
		<g:message code="news.postDate.label" default="Post Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="postDate" precision="day"  value="${newsInstance?.postDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: newsInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="news.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" maxlength="20" required="" value="${newsInstance?.author}"/>

</div>


<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="list" type="java.util.List" required="true" %>

<c:if test="${empty list}">
	<h2 class="title section-title"><fmt:message key="moderation.flagged.answers.empty" /></h2>
</c:if>

<c:if test="${not empty list}">
	<h1 class="flagged-item-title-moderator">
		<fmt:message key="menu.answers"/>
	</h1>
</c:if>

<ul>
	<c:forEach var="flaggableAnswer" items="${list}">
		<c:set var="answer" value="${flaggableAnswer.flaggable}"/>
		<c:set var="question" value="${answer.question}"/>
		<li class="post-item flagged-moderator-item question-item ${answer.isVisibleForModeratorAndNotAuthor(currentUser.current) ? 'highlight-post' : '' }">
			<div class="post-information question-information">
				<tags:postItemInformation key="post.list.vote"
					count="${answer.voteCount}" information="votes"	
					htmlClass="question-info" />
			</div>
			
			<div class="summary question-summary">
				<div class="item-title-wrapper">
					<fmt:message key="moderation.flags">
						<fmt:param value="${answer.flags.size()}"/>
					</fmt:message>
					<h3 class=" moderator-title item-title main-thread-title question-title">
						<tags:questionLinkFor answer="${answer}" />
					</h3>
					<p class="ellipsis">${answer.description}</p>
					<tags:tagsFor taggable="${question}" />
					<div class="post-simple-information">
						${question.views}
						<tags:pluralize key="post.list.view" count="${question.views}" />
					</div>

				</div>
				<tags:lastTouchFor touchable="${answer}" />
			</div>

			<div
				class="${question.hasInteraction(currentUser.current) ? 'interaction' : ''}"
				title="<fmt:message key='user.interactions'/>">
			</div>
			
			<div
				class="${answer.flags.size() >= 5 ? 'heavy-flagged' : ''}"
				title="<fmt:message key='moderation.flagged.lots'/>">
			</div>
		</li>
	</c:forEach>
</ul>

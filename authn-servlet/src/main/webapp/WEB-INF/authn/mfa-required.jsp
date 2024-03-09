<%--

  ~ Copyright 2019-Present Okta, Inc.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.

  --%>
<jsp:include page="../includes/header.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">MFA Required</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                          <c:forEach items="${factors}" var="factor">
                              <a href="${factor.verifyHref}" class="list-group-item">${factor.type}
                                  <c:if test="${not empty factor.extraInfo}">
                                      <small>- ${factor.extraInfo}</small>
                                  </c:if>
                                  <span class="badge"><span class="glyphicon demo-mfa-icon-${factor.type}"></span></span>
                              </a>
                          </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </body>

<jsp:include page="../includes/footer.jsp" />
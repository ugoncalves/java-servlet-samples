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
                        <h3 class="panel-title">Your Password is no longer valid</h3>
                    </div>
                    <div class="panel-body">

                        <jsp:include page="../includes/form-errors.jsp" />

                        <form method="POST" accept-charset="UTF-8" role="form">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Old Password" name="oldPassword" type="password" value="">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="New Password" name="newPassword" type="password" value="">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Confirm Password" name="confirmPassword" type="password" value="">
                            </div>
                            <jsp:include page="/WEB-INF/includes/csrf.jsp"/>
                            <input class="btn btn-lg btn-success btn-block" type="submit" value="Change Password">
                        </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

 </body>

<jsp:include page="../includes/footer.jsp" />
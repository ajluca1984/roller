<%--
  Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  The ASF licenses this file to You
  under the Apache License, Version 2.0 (the "License"); you may not
  use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.  For additional information regarding
  copyright in this work, please see the NOTICE file in the top level
  directory of this distribution.
--%>
<%@ include file="/WEB-INF/jsps/taglibs-struts2.jsp" %>

<%-- Page same as EntryRemove.jsp except has different action values to accomodate returning
     to the entries list instead of the new entry page.  See struts.xml for action flow.  --%>
<h2>
    <s:text name="weblogEntryRemove.removeWeblogEntry" /> [<s:property value="removeEntry.title"/>]
</h2>

<p><s:text name="weblogEntryRemove.areYouSure" /></p>
<p>
    <s:text name="weblogEntryRemove.entryTitle" /> = [<s:property value="removeEntry.title"/>]<br />
    <s:text name="weblogEntryRemove.entryId" /> = [<s:property value="removeEntry.id"/>]
</p>

<table>
<tr>
<td>
    <s:form action="entryRemoveViaList!remove">
        <s:hidden name="salt" />
        <s:hidden name="weblog" />
        <s:hidden name="removeId" />
        <s:submit value="%{getText('application.yes')}" />
    </s:form>
</td>
<td>
    <s:form action="entries">
		<s:hidden name="salt" />
        <s:hidden name="weblog" />
        <s:submit value="%{getText('application.no')}" action="entryRemove!cancel" />
    </s:form>
</td>
</tr>
</table>

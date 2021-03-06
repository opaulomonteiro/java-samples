<#-- @ftlvariable name="error" type="java.util.Map<java.lang.String,java.lang.Object>" -->
Generic Error page for local development.

<table>
    <tr>
        <th>Path</th>
         
        <td> ${error["path"]}</td>
    </tr>
    <tr>
        <th>Timestamp</th>
         
        <td> ${error["timestamp"]?datetime}</td>
    </tr>
    <tr>
        <th>Status</th>
         
        <td> ${error["status"]}</td>
    </tr>
    <tr>
        <th>Error</th>
         
        <td> ${error["error"]}</td>
    </tr>
    <tr>
        <th>Exception</th>
         
        <td> ${error["exception"]!"-"}</td>
    </tr>
    <tr>
        <th>Message</th>
         
        <td> ${error["message"]}</td>
    </tr>
    <tr>
        <th>Trace</th>
         
        <td>
            <pre>${error["trace"]!"-"}</pre>
        </td>
    </tr>
</table>
<style>
    body {
    <#if error["status"]?matches("^5") >
        background: red;
    </#if>
    }

    th {
        vertical-align: top;
    }

    th, td {
        background: #efefef;
        padding: 10px;
    }

</style>


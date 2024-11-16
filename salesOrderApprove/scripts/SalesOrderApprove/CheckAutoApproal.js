var netAmount = parseInt($.context.response.d.TotalNetAmount);
if(netAmount > 100){
	$.context.autoApprove = false;
}else{
	$.context.autoApprove = true;
}

$.context.WFApproverPayload = 
{
    "RuleServiceId": "86bbc3b2fc08a9206b910109a4702526",
    "Vocabulary": [
        {
            "SalesOffice": "170",
            "SalesOrganization": $.context.response.d.SalesOrganization,
            "ProductHierarchy": "A0000",
            "Material": $.context.response.d.to_Item.results[0].Material,
            "Discount": 10,
            "TotalNetAmount": netAmount
        }
    ]
};



/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/

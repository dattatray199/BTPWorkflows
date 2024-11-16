{
	"contents": {
		"331e0a58-ca55-438f-997f-de9ff9ff4a4d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.sd.salesorder.salesorderapprove",
			"subject": "SalesOrderApprove",
			"name": "SalesOrderApprove",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"81aaa700-17d1-4b4e-af4a-ac6181bf3419": {
					"name": "CancelWorkflow"
				},
				"d63d8fb4-3839-4b90-944b-525ffec7fa4f": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"27750713-cab1-484f-8fb9-eb1195d49817": {
					"name": "Fetch Sales Order Details"
				},
				"3a46e4f3-4769-49ca-82a8-726d4f209951": {
					"name": "Check Net Amount "
				},
				"83343848-5df8-4c16-80cf-8b1401badaea": {
					"name": "ExclusiveGateway1"
				},
				"456f917d-0efc-49e4-acc1-85488a7d52e9": {
					"name": "Auto Approval Mail"
				},
				"55fc5834-ca29-434d-a718-498794bdaf2c": {
					"name": "Request Approval"
				},
				"86ad8ff0-8e28-47c4-b264-cf58ea82cadf": {
					"name": "Check Approval"
				},
				"3d38cda6-a15b-4528-8630-4d8458e92d0c": {
					"name": "Check for Sales Order Approval Status"
				},
				"57babc8a-826b-4419-b2c9-99bac0fb9b7e": {
					"name": "Sales Order Approval Email"
				},
				"d0ddbe91-6860-4445-91cb-df472a5f5793": {
					"name": "Sales Order Rejected Email"
				},
				"f2af59ee-022e-4381-93cb-fea4a87878c9": {
					"name": "Cancellation Email"
				},
				"3b3b9dc4-0ab5-423d-960d-a26cdf378cf3": {
					"name": "Fetch Product Hierarchy"
				},
				"8d9cd960-1dc1-4d17-bd6c-508ea61318e0": {
					"name": "Release Billing Block"
				},
				"2e56114f-d237-4ca3-9c85-7f2dd403b0ef": {
					"name": "Prepare PATCH Payload"
				},
				"f3e5b8b9-b118-40a9-926e-30573d572319": {
					"name": "Prepare PATCH Payload"
				},
				"7c734420-9f98-4702-9f85-df8a82c66adb": {
					"name": "Release Billing Block"
				},
				"d9321149-6e8d-412a-9345-6a57d164783d": {
					"name": "Determine WF Approver"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6b6e65fc-9bb7-488f-b21f-83348ab776d4": {
					"name": "SequenceFlow2"
				},
				"41123031-c28a-4976-9111-dd86a6d9f616": {
					"name": "SequenceFlow3"
				},
				"b59e4b9a-a79a-41b5-8b8b-04c60fdaff4a": {
					"name": "Check if Qualify Auto Approval"
				},
				"e0fcc150-3ea9-415b-89dc-46c68190992f": {
					"name": "SequenceFlow5"
				},
				"64a0bc82-18a1-48aa-9958-dbbdfdb21a91": {
					"name": "Request for User Approval(default)"
				},
				"10d05da1-28be-41f6-8c88-0bc6654d267b": {
					"name": "SequenceFlow7"
				},
				"1d4de091-b7f2-4dff-b23a-6d245fa8b454": {
					"name": "SequenceFlow8"
				},
				"e481c162-9ed1-4710-8f4f-97e0f0d242c8": {
					"name": "Sales Order Approved"
				},
				"dd71773f-c93d-429e-86b6-f597672223d5": {
					"name": "SequenceFlow10"
				},
				"2506d025-f6ae-47b6-bee4-31bb4c7710de": {
					"name": "Sales Order Rejected(default)"
				},
				"add3baea-2aa2-4df1-8ba3-a07c22efe03c": {
					"name": "SequenceFlow13"
				},
				"4dfecef9-8f11-4200-b877-9588350c0375": {
					"name": "SequenceFlow14"
				},
				"668611b6-a1c3-4b71-b603-6f4b202dfa28": {
					"name": "SequenceFlow15"
				},
				"21ae647b-d761-481a-804c-26e31bf63f24": {
					"name": "SequenceFlow16"
				},
				"23014c22-396d-4b22-9005-83c7c7b8cdac": {
					"name": "SequenceFlow17"
				},
				"5dce14ca-690f-41ea-8243-f4145ec616cd": {
					"name": "SequenceFlow18"
				},
				"42d0b711-d4d8-4ae9-b087-03d35161203d": {
					"name": "SequenceFlow19"
				},
				"82f47e62-b3f7-4558-a4e5-fbddb18318a4": {
					"name": "SequenceFlow20"
				},
				"0b088348-4c2f-4a4a-b7f8-4d774eb3f5f1": {
					"name": "SequenceFlow21"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"e0bd7efd-5950-4940-b29b-5836b4db154d": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"81aaa700-17d1-4b4e-af4a-ac6181bf3419": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent1",
			"name": "CancelWorkflow",
			"documentation": "CancelWorkflow if user takes more than 1 min to approve/reject",
			"attachedToRef": "55fc5834-ca29-434d-a718-498794bdaf2c",
			"eventDefinitions": {
				"14cf0d68-4205-4d98-a34e-e05372bd745e": {}
			}
		},
		"d63d8fb4-3839-4b90-944b-525ffec7fa4f": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"27750713-cab1-484f-8fb9-eb1195d49817": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "S4HANA_OnPrem",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/API_SALES_ORDER_SRV/A_SalesOrder('${context.SalesOrder}')?$expand=to_Item&$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.response}",
			"id": "servicetask1",
			"name": "Fetch Sales Order Details"
		},
		"3a46e4f3-4769-49ca-82a8-726d4f209951": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderApprove/CheckAutoApproal.js",
			"id": "scripttask1",
			"name": "Check Net Amount ",
			"documentation": "Check Net Amount and set flag"
		},
		"83343848-5df8-4c16-80cf-8b1401badaea": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "64a0bc82-18a1-48aa-9958-dbbdfdb21a91"
		},
		"456f917d-0efc-49e4-acc1-85488a7d52e9": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "Auto Approval Mail",
			"documentation": "Send auto approval email in case Total Net Amount is less than 100",
			"mailDefinitionRef": "2a0fd1b9-1e82-4c74-a452-5a456f552142"
		},
		"55fc5834-ca29-434d-a718-498794bdaf2c": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Please Approve Sales Order ${context.SalesOrder}",
			"description": "Please Approve Sales Order ${context.SalesOrder}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.WFApprover.Result[0].WFApprover}",
			"formReference": "/forms/SalesOrderApprove/DisplaySalesOrderDetails.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "displaysalesorderdetails"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Request Approval",
			"documentation": "Request user approval if Total Net Amount is greater than 100"
		},
		"86ad8ff0-8e28-47c4-b264-cf58ea82cadf": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderApprove/CheckApprovalByManager.js",
			"id": "scripttask2",
			"name": "Check Approval"
		},
		"3d38cda6-a15b-4528-8630-4d8458e92d0c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Check for Sales Order Approval Status",
			"documentation": "Check for Sales Order Approval Status",
			"default": "2506d025-f6ae-47b6-bee4-31bb4c7710de"
		},
		"57babc8a-826b-4419-b2c9-99bac0fb9b7e": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Sales Order Approval Email",
			"mailDefinitionRef": "ce803af3-b158-4e00-ae9c-e0c960582b80"
		},
		"d0ddbe91-6860-4445-91cb-df472a5f5793": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask4",
			"name": "Sales Order Rejected Email",
			"mailDefinitionRef": "2b62be59-f7b7-4106-86ef-8d8bee5301f8"
		},
		"f2af59ee-022e-4381-93cb-fea4a87878c9": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask5",
			"name": "Cancellation Email",
			"mailDefinitionRef": "8ffdb795-185f-4ed2-807c-89caa48fa925"
		},
		"3b3b9dc4-0ab5-423d-960d-a26cdf378cf3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "S4HANA_OnPrem",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/API_PRODUCT_SRV/A_Product('${context.response.d.to_Item.results[0].Material}')?$select=ProductHierarchy&$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.ProductHierarchy}",
			"id": "servicetask2",
			"name": "Fetch Product Hierarchy"
		},
		"8d9cd960-1dc1-4d17-bd6c-508ea61318e0": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "S4HANA_OnPrem",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/API_SALES_ORDER_SRV/A_SalesOrder('${context.SalesOrder}')",
			"httpMethod": "PATCH",
			"xsrfPath": "/sap/opu/odata/sap/API_SALES_ORDER_SRV/A_SalesOrder('${context.SalesOrder}')?$format=json",
			"requestVariable": "${context.PatchPayload}",
			"responseVariable": "${context.releaseStatus}",
			"headers": [{
				"name": "if-match",
				"value": "${context.etag}"
			}],
			"id": "servicetask3",
			"name": "Release Billing Block",
			"documentation": "Release Billing Block on Successful Approval"
		},
		"2e56114f-d237-4ca3-9c85-7f2dd403b0ef": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderApprove/ModifySalesOrder.js",
			"id": "scripttask3",
			"name": "Prepare PATCH Payload"
		},
		"f3e5b8b9-b118-40a9-926e-30573d572319": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderApprove/ModifySalesOrder.js",
			"id": "scripttask4",
			"name": "Prepare PATCH Payload"
		},
		"7c734420-9f98-4702-9f85-df8a82c66adb": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "S4HANA_OnPrem",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/API_SALES_ORDER_SRV/A_SalesOrder('${context.SalesOrder}')",
			"httpMethod": "PATCH",
			"xsrfPath": "/sap/opu/odata/sap/API_SALES_ORDER_SRV/A_SalesOrder('${context.SalesOrder}')?$format=json",
			"requestVariable": "${context.PatchPayload}",
			"responseVariable": "${context.releaseStatus}",
			"headers": [{
				"name": "if-match",
				"value": "${context.etag}"
			}],
			"id": "servicetask4",
			"name": "Release Billing Block"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "27750713-cab1-484f-8fb9-eb1195d49817"
		},
		"6b6e65fc-9bb7-488f-b21f-83348ab776d4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "27750713-cab1-484f-8fb9-eb1195d49817",
			"targetRef": "3b3b9dc4-0ab5-423d-960d-a26cdf378cf3"
		},
		"41123031-c28a-4976-9111-dd86a6d9f616": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "3a46e4f3-4769-49ca-82a8-726d4f209951",
			"targetRef": "d9321149-6e8d-412a-9345-6a57d164783d"
		},
		"b59e4b9a-a79a-41b5-8b8b-04c60fdaff4a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.autoApprove == true}",
			"id": "sequenceflow4",
			"name": "Check if Qualify Auto Approval",
			"sourceRef": "83343848-5df8-4c16-80cf-8b1401badaea",
			"targetRef": "456f917d-0efc-49e4-acc1-85488a7d52e9"
		},
		"e0fcc150-3ea9-415b-89dc-46c68190992f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "456f917d-0efc-49e4-acc1-85488a7d52e9",
			"targetRef": "2e56114f-d237-4ca3-9c85-7f2dd403b0ef"
		},
		"64a0bc82-18a1-48aa-9958-dbbdfdb21a91": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "Request for User Approval(default)",
			"sourceRef": "83343848-5df8-4c16-80cf-8b1401badaea",
			"targetRef": "55fc5834-ca29-434d-a718-498794bdaf2c"
		},
		"10d05da1-28be-41f6-8c88-0bc6654d267b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "55fc5834-ca29-434d-a718-498794bdaf2c",
			"targetRef": "86ad8ff0-8e28-47c4-b264-cf58ea82cadf"
		},
		"1d4de091-b7f2-4dff-b23a-6d245fa8b454": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "86ad8ff0-8e28-47c4-b264-cf58ea82cadf",
			"targetRef": "3d38cda6-a15b-4528-8630-4d8458e92d0c"
		},
		"e481c162-9ed1-4710-8f4f-97e0f0d242c8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.userDecision == 'approve'}",
			"id": "sequenceflow9",
			"name": "Sales Order Approved",
			"sourceRef": "3d38cda6-a15b-4528-8630-4d8458e92d0c",
			"targetRef": "57babc8a-826b-4419-b2c9-99bac0fb9b7e"
		},
		"dd71773f-c93d-429e-86b6-f597672223d5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "57babc8a-826b-4419-b2c9-99bac0fb9b7e",
			"targetRef": "f3e5b8b9-b118-40a9-926e-30573d572319"
		},
		"2506d025-f6ae-47b6-bee4-31bb4c7710de": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "Sales Order Rejected(default)",
			"sourceRef": "3d38cda6-a15b-4528-8630-4d8458e92d0c",
			"targetRef": "d0ddbe91-6860-4445-91cb-df472a5f5793"
		},
		"add3baea-2aa2-4df1-8ba3-a07c22efe03c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "d0ddbe91-6860-4445-91cb-df472a5f5793",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"4dfecef9-8f11-4200-b877-9588350c0375": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "81aaa700-17d1-4b4e-af4a-ac6181bf3419",
			"targetRef": "f2af59ee-022e-4381-93cb-fea4a87878c9"
		},
		"668611b6-a1c3-4b71-b603-6f4b202dfa28": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "f2af59ee-022e-4381-93cb-fea4a87878c9",
			"targetRef": "d63d8fb4-3839-4b90-944b-525ffec7fa4f"
		},
		"21ae647b-d761-481a-804c-26e31bf63f24": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "3b3b9dc4-0ab5-423d-960d-a26cdf378cf3",
			"targetRef": "3a46e4f3-4769-49ca-82a8-726d4f209951"
		},
		"23014c22-396d-4b22-9005-83c7c7b8cdac": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "8d9cd960-1dc1-4d17-bd6c-508ea61318e0",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"5dce14ca-690f-41ea-8243-f4145ec616cd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "2e56114f-d237-4ca3-9c85-7f2dd403b0ef",
			"targetRef": "8d9cd960-1dc1-4d17-bd6c-508ea61318e0"
		},
		"42d0b711-d4d8-4ae9-b087-03d35161203d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "f3e5b8b9-b118-40a9-926e-30573d572319",
			"targetRef": "7c734420-9f98-4702-9f85-df8a82c66adb"
		},
		"82f47e62-b3f7-4558-a4e5-fbddb18318a4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "7c734420-9f98-4702-9f85-df8a82c66adb",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"d2dd7b97-6dad-4fec-bcf8-ce5eae6b7844": {},
				"e5edd724-41e8-4775-ada7-c029f073afd8": {},
				"ef46e69f-6868-4e5d-ae5b-912fee46a217": {},
				"351fafae-07d0-4426-8a6b-bbb3ab56929a": {},
				"b8df5f59-81e7-4777-bc17-2556ef596b72": {},
				"32819bfb-7cf8-4648-9a30-8e6db4ffe864": {},
				"57befd26-7906-4969-bb14-cdd1fd82b500": {},
				"6f0464da-fce1-4388-8905-3e72e3071d85": {},
				"a2d3044e-fedb-406a-a449-73705275bcd5": {},
				"35d04878-f904-44f1-8863-7ad9ddc5df81": {},
				"74be63c1-b109-4350-8563-61116a42ca2b": {},
				"61604427-b368-41c1-8065-496fe325ec20": {},
				"c19a675b-d02b-43a0-9bbb-0308adcf703d": {},
				"a93a2985-c586-4a8e-8b78-3e046e696d4c": {},
				"8183f176-6260-4446-9205-1a9ee038af50": {},
				"a5cb0577-5df2-4cd3-9d94-6bb84330d6f9": {},
				"a21803cb-a29e-48c5-824c-1611b15c0e81": {},
				"010cfc36-61c5-4aa9-b99b-0af5a6c66bc3": {},
				"c3be47fa-05f3-4425-ad6d-0beb6eaa6b59": {},
				"385da73c-b633-4205-b318-f5656cd683a8": {},
				"2f61cb9f-0d2c-4cb6-a3c6-9c2e5b3fefb5": {},
				"81cbb546-0d07-4818-8849-a06f69828f27": {},
				"7669fc89-97c2-408f-865d-6f5a248d1065": {},
				"574f3441-aec9-455b-85c5-d00a7849ef92": {},
				"9f6c9a2a-6c0f-4d6e-bc48-36a154bcdccf": {},
				"8e3f3392-b94d-4e64-88cf-70b3806d492b": {},
				"4e2fd213-0dc4-48b7-97de-f6434eed85f7": {},
				"88e0c7fe-2551-43a0-a0c9-3d7c915a9e15": {},
				"de97f33a-9443-4c91-be09-6e032381b3ed": {},
				"7923f38e-e971-4292-aa62-64386f7fc4ec": {},
				"11b6e47f-cb08-4fc3-9090-3cc5516367e7": {},
				"e871b036-de2b-4779-b1c2-30918fe0a594": {},
				"6719fb1d-0673-472f-8e83-ca68fa446e3d": {},
				"6ed82c5c-d9aa-43cb-89e3-52036fa7cb74": {},
				"5a6b542a-c7ef-4f80-87a1-0a2f094a895b": {},
				"ec8fe8d6-afff-4033-b471-5ee4f51499fa": {}
			}
		},
		"e0bd7efd-5950-4940-b29b-5836b4db154d": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderApprove/SalesOrderDetails.json",
			"id": "default-start-context"
		},
		"14cf0d68-4205-4d98-a34e-e05372bd745e": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -86,
			"y": 136,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1756.9999928474426,
			"y": 129.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-54,152 -4,152",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "d2dd7b97-6dad-4fec-bcf8-ce5eae6b7844",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"d2dd7b97-6dad-4fec-bcf8-ce5eae6b7844": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -4,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "27750713-cab1-484f-8fb9-eb1195d49817"
		},
		"e5edd724-41e8-4775-ada7-c029f073afd8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "96,152 148,152",
			"sourceSymbol": "d2dd7b97-6dad-4fec-bcf8-ce5eae6b7844",
			"targetSymbol": "9f6c9a2a-6c0f-4d6e-bc48-36a154bcdccf",
			"object": "6b6e65fc-9bb7-488f-b21f-83348ab776d4"
		},
		"ef46e69f-6868-4e5d-ae5b-912fee46a217": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 300,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "3a46e4f3-4769-49ca-82a8-726d4f209951"
		},
		"351fafae-07d0-4426-8a6b-bbb3ab56929a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "350,152 469,152",
			"sourceSymbol": "ef46e69f-6868-4e5d-ae5b-912fee46a217",
			"targetSymbol": "5a6b542a-c7ef-4f80-87a1-0a2f094a895b",
			"object": "41123031-c28a-4976-9111-dd86a6d9f616"
		},
		"b8df5f59-81e7-4777-bc17-2556ef596b72": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 544,
			"y": 131,
			"object": "83343848-5df8-4c16-80cf-8b1401badaea"
		},
		"32819bfb-7cf8-4648-9a30-8e6db4ffe864": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,152 648,152 648,284.5 709.9999988079071,284.4999997019768",
			"sourceSymbol": "b8df5f59-81e7-4777-bc17-2556ef596b72",
			"targetSymbol": "57befd26-7906-4969-bb14-cdd1fd82b500",
			"object": "b59e4b9a-a79a-41b5-8b8b-04c60fdaff4a"
		},
		"57befd26-7906-4969-bb14-cdd1fd82b500": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 709.9999988079071,
			"y": 254.49999970197678,
			"width": 100,
			"height": 60,
			"object": "456f917d-0efc-49e4-acc1-85488a7d52e9"
		},
		"6f0464da-fce1-4388-8905-3e72e3071d85": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "809.9999988079071,284.2499998509884 926.9999976158142,284.2499998509884",
			"sourceSymbol": "57befd26-7906-4969-bb14-cdd1fd82b500",
			"targetSymbol": "de97f33a-9443-4c91-be09-6e032381b3ed",
			"object": "e0fcc150-3ea9-415b-89dc-46c68190992f"
		},
		"a2d3044e-fedb-406a-a449-73705275bcd5": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 696.9999988079071,
			"y": 122.49999970197678,
			"width": 100,
			"height": 60,
			"object": "55fc5834-ca29-434d-a718-498794bdaf2c",
			"symbols": {
				"34c8bd77-cc2b-401a-a573-7c6428dec28d": {}
			}
		},
		"35d04878-f904-44f1-8863-7ad9ddc5df81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,152 641.5,152 641.5,122.5 696.9999988079071,122.49999970197678",
			"sourceSymbol": "b8df5f59-81e7-4777-bc17-2556ef596b72",
			"targetSymbol": "a2d3044e-fedb-406a-a449-73705275bcd5",
			"object": "64a0bc82-18a1-48aa-9958-dbbdfdb21a91"
		},
		"74be63c1-b109-4350-8563-61116a42ca2b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "696.9999988079071,122.49999970197678 697,16 926.9999976158142,16",
			"sourceSymbol": "a2d3044e-fedb-406a-a449-73705275bcd5",
			"targetSymbol": "61604427-b368-41c1-8065-496fe325ec20",
			"object": "10d05da1-28be-41f6-8c88-0bc6654d267b"
		},
		"61604427-b368-41c1-8065-496fe325ec20": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 926.9999976158142,
			"y": -14,
			"width": 100,
			"height": 60,
			"object": "86ad8ff0-8e28-47c4-b264-cf58ea82cadf"
		},
		"c19a675b-d02b-43a0-9bbb-0308adcf703d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1026.9999976158142,15.25 1089.9999964237213,15.25",
			"sourceSymbol": "61604427-b368-41c1-8065-496fe325ec20",
			"targetSymbol": "a93a2985-c586-4a8e-8b78-3e046e696d4c",
			"object": "1d4de091-b7f2-4dff-b23a-6d245fa8b454"
		},
		"a93a2985-c586-4a8e-8b78-3e046e696d4c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1089.9999964237213,
			"y": -6.5,
			"object": "3d38cda6-a15b-4528-8630-4d8458e92d0c"
		},
		"8183f176-6260-4446-9205-1a9ee038af50": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1131.9999964237213,14.5 1177.5,14.5 1177.5,147 1222.9999952316284,147.00000029802322",
			"sourceSymbol": "a93a2985-c586-4a8e-8b78-3e046e696d4c",
			"targetSymbol": "a5cb0577-5df2-4cd3-9d94-6bb84330d6f9",
			"object": "e481c162-9ed1-4710-8f4f-97e0f0d242c8"
		},
		"a5cb0577-5df2-4cd3-9d94-6bb84330d6f9": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1222.9999952316284,
			"y": 117.00000029802322,
			"width": 100,
			"height": 60,
			"object": "57babc8a-826b-4419-b2c9-99bac0fb9b7e"
		},
		"a21803cb-a29e-48c5-824c-1611b15c0e81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1322.9999952316284,147.00000029802322 1393.9999940395355,147",
			"sourceSymbol": "a5cb0577-5df2-4cd3-9d94-6bb84330d6f9",
			"targetSymbol": "11b6e47f-cb08-4fc3-9090-3cc5516367e7",
			"object": "dd71773f-c93d-429e-86b6-f597672223d5"
		},
		"010cfc36-61c5-4aa9-b99b-0af5a6c66bc3": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1222.9999952316284,
			"y": -13.999999701976776,
			"width": 100,
			"height": 60,
			"object": "d0ddbe91-6860-4445-91cb-df472a5f5793"
		},
		"c3be47fa-05f3-4425-ad6d-0beb6eaa6b59": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1131.9999964237213,15.250000149011612 1222.4999952316284,15.250000149011612",
			"sourceSymbol": "a93a2985-c586-4a8e-8b78-3e046e696d4c",
			"targetSymbol": "010cfc36-61c5-4aa9-b99b-0af5a6c66bc3",
			"object": "2506d025-f6ae-47b6-bee4-31bb4c7710de"
		},
		"385da73c-b633-4205-b318-f5656cd683a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1322.9999952316284,16.000000298023224 1540.25,16 1540.25,147 1756.9999928474426,147",
			"sourceSymbol": "010cfc36-61c5-4aa9-b99b-0af5a6c66bc3",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "add3baea-2aa2-4df1-8ba3-a07c22efe03c"
		},
		"2f61cb9f-0d2c-4cb6-a3c6-9c2e5b3fefb5": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 926.9999976158142,
			"y": 117,
			"width": 100,
			"height": 60,
			"object": "f2af59ee-022e-4381-93cb-fea4a87878c9"
		},
		"81cbb546-0d07-4818-8849-a06f69828f27": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "812.9999988079071,147.49999970197678 870,147.5 870,147 926.9999976158142,147",
			"sourceSymbol": "34c8bd77-cc2b-401a-a573-7c6428dec28d",
			"targetSymbol": "2f61cb9f-0d2c-4cb6-a3c6-9c2e5b3fefb5",
			"object": "4dfecef9-8f11-4200-b877-9588350c0375"
		},
		"7669fc89-97c2-408f-865d-6f5a248d1065": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1054.9999964237213,
			"y": 129.5,
			"width": 35,
			"height": 35,
			"object": "d63d8fb4-3839-4b90-944b-525ffec7fa4f"
		},
		"574f3441-aec9-455b-85c5-d00a7849ef92": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1026.9999976158142,147 1054.9999964237213,147",
			"sourceSymbol": "2f61cb9f-0d2c-4cb6-a3c6-9c2e5b3fefb5",
			"targetSymbol": "7669fc89-97c2-408f-865d-6f5a248d1065",
			"object": "668611b6-a1c3-4b71-b603-6f4b202dfa28"
		},
		"9f6c9a2a-6c0f-4d6e-bc48-36a154bcdccf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 148,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "3b3b9dc4-0ab5-423d-960d-a26cdf378cf3"
		},
		"8e3f3392-b94d-4e64-88cf-70b3806d492b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "248,152 300,152",
			"sourceSymbol": "9f6c9a2a-6c0f-4d6e-bc48-36a154bcdccf",
			"targetSymbol": "ef46e69f-6868-4e5d-ae5b-912fee46a217",
			"object": "21ae647b-d761-481a-804c-26e31bf63f24"
		},
		"4e2fd213-0dc4-48b7-97de-f6434eed85f7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1222.9999964237213,
			"y": 253.5,
			"width": 100,
			"height": 60,
			"object": "8d9cd960-1dc1-4d17-bd6c-508ea61318e0"
		},
		"88e0c7fe-2551-43a0-a0c9-3d7c915a9e15": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1322.9999964237213,283.5 1540.25,283.5 1540.25,147 1756.9999928474426,147",
			"sourceSymbol": "4e2fd213-0dc4-48b7-97de-f6434eed85f7",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "23014c22-396d-4b22-9005-83c7c7b8cdac"
		},
		"de97f33a-9443-4c91-be09-6e032381b3ed": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 926.9999976158142,
			"y": 254,
			"width": 100,
			"height": 60,
			"object": "2e56114f-d237-4ca3-9c85-7f2dd403b0ef"
		},
		"7923f38e-e971-4292-aa62-64386f7fc4ec": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1026.9999976158142,283.75 1222.9999964237213,283.75",
			"sourceSymbol": "de97f33a-9443-4c91-be09-6e032381b3ed",
			"targetSymbol": "4e2fd213-0dc4-48b7-97de-f6434eed85f7",
			"object": "5dce14ca-690f-41ea-8243-f4145ec616cd"
		},
		"11b6e47f-cb08-4fc3-9090-3cc5516367e7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1393.9999940395355,
			"y": 117,
			"width": 100,
			"height": 60,
			"object": "f3e5b8b9-b118-40a9-926e-30573d572319"
		},
		"e871b036-de2b-4779-b1c2-30918fe0a594": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1493.9999940395355,147 1565.9999940395355,147",
			"sourceSymbol": "11b6e47f-cb08-4fc3-9090-3cc5516367e7",
			"targetSymbol": "6719fb1d-0673-472f-8e83-ca68fa446e3d",
			"object": "42d0b711-d4d8-4ae9-b087-03d35161203d"
		},
		"6719fb1d-0673-472f-8e83-ca68fa446e3d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1565.9999940395355,
			"y": 117,
			"width": 100,
			"height": 60,
			"object": "7c734420-9f98-4702-9f85-df8a82c66adb"
		},
		"6ed82c5c-d9aa-43cb-89e3-52036fa7cb74": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1665.9999940395355,147 1756.9999928474426,147",
			"sourceSymbol": "6719fb1d-0673-472f-8e83-ca68fa446e3d",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "82f47e62-b3f7-4558-a4e5-fbddb18318a4"
		},
		"34c8bd77-cc2b-401a-a573-7c6428dec28d": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 780.9999988079071,
			"y": 131.49999970197678,
			"object": "81aaa700-17d1-4b4e-af4a-ac6181bf3419"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 4,
			"sequenceflow": 21,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 2,
			"usertask": 1,
			"servicetask": 5,
			"scripttask": 4,
			"mailtask": 5,
			"exclusivegateway": 2,
			"referencedsubflow": 1
		},
		"2a0fd1b9-1e82-4c74-a452-5a456f552142": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.WFApprover}",
			"subject": "Sales Order ${context.SalesOrder} has been auto Approved",
			"reference": "/webcontent/SalesOrderApprove/ApprovalEmailTemplate.html",
			"id": "maildefinition1"
		},
		"ce803af3-b158-4e00-ae9c-e0c960582b80": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "dattatray.kulkarni@ltimindtree.com",
			"subject": "Sales Order ${context.SalesOrder} Approved by ${context.userTaskProcessor}",
			"reference": "/webcontent/SalesOrderApprove/ApprovalEmailTemplate.html",
			"id": "maildefinition2"
		},
		"2b62be59-f7b7-4106-86ef-8d8bee5301f8": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "dattatray.kulkarni@ltimindtree.com",
			"subject": "Sales Order ${context.SalesOrder} Rejected by ${context.userTaskProcessor}",
			"text": "Sales Order ${context.SalesOrder} Rejected by ${context.userTaskProcessor}\n\nJSON for Sales Order -\n${context.response.d}",
			"id": "maildefinition3"
		},
		"8ffdb795-185f-4ed2-807c-89caa48fa925": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "dattatray.kulkarni1909@outlook.com",
			"bcc": "",
			"subject": "Sales Order Approval request for SO ${context.SalesOrder} was cancelled ",
			"text": "Dear ${info.startedBy}, \n\nSales Order Approval request for SO ${context.SalesOrder} was cancelled due to no action",
			"id": "maildefinition4"
		},
		"d9321149-6e8d-412a-9345-6a57d164783d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "SAP_Build_Business_Rule_Service",
			"destinationSource": "consumer",
			"path": "/public/rule/runtime/rest/v2/rule-services",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.WFApproverPayload}",
			"responseVariable": "${context.WFApprover}",
			"id": "servicetask5",
			"name": "Determine WF Approver"
		},
		"5a6b542a-c7ef-4f80-87a1-0a2f094a895b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 419,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "d9321149-6e8d-412a-9345-6a57d164783d"
		},
		"0b088348-4c2f-4a4a-b7f8-4d774eb3f5f1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "d9321149-6e8d-412a-9345-6a57d164783d",
			"targetRef": "83343848-5df8-4c16-80cf-8b1401badaea"
		},
		"ec8fe8d6-afff-4033-b471-5ee4f51499fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "469,152 565,152",
			"sourceSymbol": "5a6b542a-c7ef-4f80-87a1-0a2f094a895b",
			"targetSymbol": "b8df5f59-81e7-4777-bc17-2556ef596b72",
			"object": "0b088348-4c2f-4a4a-b7f8-4d774eb3f5f1"
		}
	}
}
set define off
PROMPT >> Loading Exported Diagrams
PROMPT >> Loading Example "AA1 - Gateway Tutorial"
begin
insert into flow_diagrams( dgrm_name, dgrm_version, dgrm_category, dgrm_last_update, dgrm_content )
 values (
'AA1 - Gateway Tutorial',
0,
'Tutorials',
to_timestamp_tz( '07.02.2021 16:01:30.361961000 +00:00', 'dd.mm.yyyy hh24:mi:ssxff TZH:TZM'),
apex_string.join_clob(
  apex_t_varchar2(
  q'[<?xml version='1.0' encoding='UTF-8'?>]'
  , q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
  , q'[  <bpmn:process id='Process_Gateway_Tutorial' name='Gateway Routing Tutorial' isExecutable='false'>]'
  , q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
  , q'[Flowquest Consulting.]'
  , q'[twitter: @FlowquestR</bpmn:documentation>]'
  , q'[    <bpmn:startEvent id='Event_0rq5hjv' name='Start Tutorial'>]'
  , q'[      <bpmn:outgoing>Flow_0yr7dsk</bpmn:outgoing>]'
  , q'[    </bpmn:startEvent>]'
  , q'[    <bpmn:task id='Activity_135jcwt' name='Task A'>]'
  , q'[      <bpmn:incoming>Flow_0yr7dsk</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_02o3o4y</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0yr7dsk' sourceRef='Event_0rq5hjv' targetRef='Activity_135jcwt' />]'
  , q'[    <bpmn:exclusiveGateway id='Gateway_11lejcq' name='Select Route 1?' default='Flow_1h8t6bd'>]'
  , q'[      <bpmn:incoming>Flow_02o3o4y</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0jo4c98</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_1h8t6bd</bpmn:outgoing>]'
  , q'[    </bpmn:exclusiveGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_02o3o4y' sourceRef='Activity_135jcwt' targetRef='Gateway_11lejcq' />]'
  , q'[    <bpmn:task id='Activity_1b47q7i' name='Yes Route'>]'
  , q'[      <bpmn:incoming>Flow_0jo4c98</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0xk0udg</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0jo4c98' name='Y' sourceRef='Gateway_11lejcq' targetRef='Activity_1b47q7i' />]'
  , q'[    <bpmn:task id='Activity_0jktnki' name='No Route&#10;(Default Path)'>]'
  , q'[      <bpmn:incoming>Flow_1h8t6bd</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1q12jx5</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1h8t6bd' name='N' sourceRef='Gateway_11lejcq' targetRef='Activity_0jktnki' />]'
  , q'[    <bpmn:exclusiveGateway id='Gateway_1d4vdv1' name='Closing&#10;Gateway 1'>]'
  , q'[      <bpmn:incoming>Flow_1q12jx5</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_0xk0udg</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_15kog9s</bpmn:outgoing>]'
  , q'[    </bpmn:exclusiveGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1q12jx5' sourceRef='Activity_0jktnki' targetRef='Gateway_1d4vdv1' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_0xk0udg' sourceRef='Activity_1b47q7i' targetRef='Gateway_1d4vdv1' />]'
  , q'[    <bpmn:task id='Activity_0yr8k9p' name='Second Yes Route'>]'
  , q'[      <bpmn:incoming>Flow_2_Yes</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0k5jysk</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_15kog9s' sourceRef='Gateway_1d4vdv1' targetRef='Activity_1qvl818' />]'
  , q'[    <bpmn:endEvent id='Event_0uu6w6g' name='End Tutorial'>]'
  , q'[      <bpmn:incoming>Flow_0bc9nni</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0k5jysk' sourceRef='Activity_0yr8k9p' targetRef='Gateway_0wcdym9' />]'
  , q'[    <bpmn:exclusiveGateway id='Gateway_Two' name='Gateway Two'>]'
  , q'[      <bpmn:incoming>Flow_05v09nk</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_2_Yes</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_2_No</bpmn:outgoing>]'
  , q'[    </bpmn:exclusiveGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_2_Yes' name='2_Yes' sourceRef='Gateway_Two' targetRef='Activity_0yr8k9p' />]'
  , q'[    <bpmn:exclusiveGateway id='Gateway_0wcdym9'>]'
  , q'[      <bpmn:incoming>Flow_0k5jysk</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_1lsahzw</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0bc9nni</bpmn:outgoing>]'
  , q'[    </bpmn:exclusiveGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0bc9nni' sourceRef='Gateway_0wcdym9' targetRef='Event_0uu6w6g' />]'
  , q'[    <bpmn:task id='Activity_0jpxv7u' name='Second No Route'>]'
  , q'[      <bpmn:incoming>Flow_2_No</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1lsahzw</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_2_No' name='2_No' sourceRef='Gateway_Two' targetRef='Activity_0jpxv7u' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1lsahzw' sourceRef='Activity_0jpxv7u' targetRef='Gateway_0wcdym9' />]'
  , q'[    <bpmn:task id='Activity_1qvl818' name='Set Up Routing'>]'
  , q'[      <bpmn:incoming>Flow_15kog9s</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_05v09nk</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_05v09nk' sourceRef='Activity_1qvl818' targetRef='Gateway_Two' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1fvohcn'>]'
  , q'[      <bpmn:text>How to Navigate through a Gateway for a Demo Model: ]'
  , q'[Method 1: Default Routing.]'
  , q'[Note that the Lower Route has a '/' mark across the flow.  This denotes it as the default path.]'
  , q'[To add default path:]'
  , q'[- select the Flow between the Gateway and the next object.]'
  , q'[- click on the 'morph' tool (the spanner)]'
  , q'[- select default path</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0jg4oqm' sourceRef='Gateway_11lejcq' targetRef='TextAnnotation_1fvohcn' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0qhtqn5'>]'
  , q'[      <bpmn:text>This is a mini-tutorial on Gateways that will help you create a test model here and execute it.]'
  , q'[]'
  , q'[When you add Flows for APEX into your application, you would have some application logic helping to steer you through the gateways.  In this demo environment, we have to cheat a little.]'
  , q'[]'
  , q'[The first gateway uses default routing to force your model to always go on one path.  Obviously, to test your model you can edit the model to move the default from one path to another....]'
  , q'[]'
  , q'[The second gateway shows you how Flows for APEX process variables can be used to instruct the gateway which route to take.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_1y1u9dd' sourceRef='Activity_135jcwt' targetRef='TextAnnotation_0qhtqn5' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1vzs22f'>]'
  , q'[      <bpmn:text>Method 2: Instructing the Gateway using Routing Variables]'
  , q'[(This is far more useful!)]'
  , q'[]'
  , q'[Click on the Gateway &amp; see that it has an ID of 'Gateway_Two' in the properties panel on the right.]'
  , q'[Note that the two forward paths have ID's of 'Flow_2_Yes' and 'Flow_2_No']'
  , q'[]'
  , q'[To instruct our gateway 'Gateway_Two' which way to route the process, you would set up a Process Variable with the routing instructions somewhere in your application before you get to the Gateway. ]'
  , q'[]'
  , q'[You need to set a process variable with name = &lt;gateway_ID&gt;&lt;:route&gt;. The value needs to be the ID of the route you want it to take.]'
  , q'[]'
  , q'[So in our example, we need to set process variable 'Gateway_Two:route' with a varchar2 value of 'Flow_2_Yes' to go down the 2_Yes route, and 'Flow_2_No' to go down the 2_No route.]'
  , q'[]'
  , q'[In the Flow Monitor, you can set this manually or you can use the Gateway Route Tool. Run a copy of this model in Flow Control. Before you get to Gateway Two, Click on the Variables Tab. Add a row into the Interactive Grid to create our process variable named 'Gateway_Two:route' , give it a type of VARCHAR2, and set its value to 'Flow_2_No'. Don't forget to Save this. Then go to the Subflows tab, and step the process on through the gateway.]'
  , q'[]'
  , q'[Using the Gateway Routing Tool makes this manual process easier. Once you have the process running, select the Variables tab. This gives you a pop-up list of opening gateways, and shows you the possible route options. Select the one or ones you want, and you will see the process variable has been created and set for you. Again, don't forget to save this, then go to the Subflows tab, and step the process on through the gateway.]'
  , q'[]'
  , q'[In a real application you wouldn't do this through the Flow Engine console. Somewhere in your application you would set the routing based on your data. This could be a variable set call in any previous step, or you could have a scriptTask in the step immediately before that runs a PL/SQL script to set it based on some query or whatever your imagination can create!</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0hx891w' sourceRef='Activity_1qvl818' targetRef='TextAnnotation_1vzs22f' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0kv1ra3'>]'
  , q'[      <bpmn:text>An Opening Gateway will first look for a process variable &lt;its name&gt;:route containing a route.  If not finds that, it uses that for its routing.]'
  , q'[]'
  , q'[if there is no process variable, it looks for default routing]'
  , q'[]'
  , q'[If there is no variable and no default routing, it will return an error to the user.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0jgd1xj' sourceRef='Gateway_0wcdym9' targetRef='TextAnnotation_0kv1ra3' />]'
  , q'[  </bpmn:process>]'
  , q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
  , q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Process_Gateway_Tutorial'>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1vzs22f_di' bpmnElement='TextAnnotation_1vzs22f'>]'
  , q'[        <dc:Bounds x='1140' y='-20' width='790' height='387.9891357421875' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0kv1ra3_di' bpmnElement='TextAnnotation_0kv1ra3'>]'
  , q'[        <dc:Bounds x='1400' y='520' width='470.0000305175781' height='95.99185180664062' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_05v09nk_di' bpmnElement='Flow_05v09nk'>]'
  , q'[        <di:waypoint x='930' y='390' />]'
  , q'[        <di:waypoint x='930' y='415' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1lsahzw_di' bpmnElement='Flow_1lsahzw'>]'
  , q'[        <di:waypoint x='1170' y='550' />]'
  , q'[        <di:waypoint x='1310' y='550' />]'
  , q'[        <di:waypoint x='1310' y='465' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0eztoqc_di' bpmnElement='Flow_2_No'>]'
  , q'[        <di:waypoint x='930' y='465' />]'
  , q'[        <di:waypoint x='930' y='550' />]'
  , q'[        <di:waypoint x='1070' y='550' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='932' y='505' width='27' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0bc9nni_di' bpmnElement='Flow_0bc9nni'>]'
  , q'[        <di:waypoint x='1335' y='440' />]'
  , q'[        <di:waypoint x='1422' y='440' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0qf714m_di' bpmnElement='Flow_2_Yes'>]'
  , q'[        <di:waypoint x='955' y='440' />]'
  , q'[        <di:waypoint x='1070' y='440' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='997' y='422' width='31' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0k5jysk_di' bpmnElement='Flow_0k5jysk'>]'
  , q'[        <di:waypoint x='1170' y='440' />]'
  , q'[        <di:waypoint x='1285' y='440' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_15kog9s_di' bpmnElement='Flow_15kog9s'>]'
  , q'[        <di:waypoint x='805' y='350' />]'
  , q'[        <di:waypoint x='880' y='350' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0xk0udg_di' bpmnElement='Flow_0xk0udg'>]'
  , q'[        <di:waypoint x='700' y='350' />]'
  , q'[        <di:waypoint x='755' y='350' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1q12jx5_di' bpmnElement='Flow_1q12jx5'>]'
  , q'[        <di:waypoint x='700' y='460' />]'
  , q'[        <di:waypoint x='780' y='460' />]'
  , q'[        <di:waypoint x='780' y='375' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1h8t6bd_di' bpmnElement='Flow_1h8t6bd'>]'
  , q'[        <di:waypoint x='520' y='375' />]'
  , q'[        <di:waypoint x='520' y='460' />]'
  , q'[        <di:waypoint x='600' y='460' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='546' y='443' width='8' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0jo4c98_di' bpmnElement='Flow_0jo4c98'>]'
  , q'[        <di:waypoint x='545' y='350' />]'
  , q'[        <di:waypoint x='600' y='350' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='569' y='332' width='8' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_02o3o4y_di' bpmnElement='Flow_02o3o4y'>]'
  , q'[        <di:waypoint x='440' y='350' />]'
  , q'[        <di:waypoint x='495' y='350' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0yr7dsk_di' bpmnElement='Flow_0yr7dsk'>]'
  , q'[        <di:waypoint x='258' y='350' />]'
  , q'[        <di:waypoint x='340' y='350' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_0rq5hjv_di' bpmnElement='Event_0rq5hjv'>]'
  , q'[        <dc:Bounds x='222' y='332' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='209' y='375' width='63' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_135jcwt_di' bpmnElement='Activity_135jcwt'>]'
  , q'[        <dc:Bounds x='340' y='310' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_11lejcq_di' bpmnElement='Gateway_11lejcq' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='495' y='325' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='521' y='273' width='79' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1b47q7i_di' bpmnElement='Activity_1b47q7i'>]'
  , q'[        <dc:Bounds x='600' y='310' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0jktnki_di' bpmnElement='Activity_0jktnki'>]'
  , q'[        <dc:Bounds x='600' y='420' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_1d4vdv1_di' bpmnElement='Gateway_1d4vdv1' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='755' y='325' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='753' y='266' width='53' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0yr8k9p_di' bpmnElement='Activity_0yr8k9p'>]'
  , q'[        <dc:Bounds x='1070' y='400' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0uu6w6g_di' bpmnElement='Event_0uu6w6g'>]'
  , q'[        <dc:Bounds x='1422' y='422' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1411' y='465' width='59' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0r9iz6p_di' bpmnElement='Gateway_Two' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='905' y='415' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='818' y='430' width='67' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0wcdym9_di' bpmnElement='Gateway_0wcdym9' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='1285' y='415' width='50' height='50' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0jpxv7u_di' bpmnElement='Activity_0jpxv7u'>]'
  , q'[        <dc:Bounds x='1070' y='510' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1qvl818_di' bpmnElement='Activity_1qvl818'>]'
  , q'[        <dc:Bounds x='880' y='310' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1fvohcn_di' bpmnElement='TextAnnotation_1fvohcn'>]'
  , q'[        <dc:Bounds x='410' y='570' width='540' height='110' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0qhtqn5_di' bpmnElement='TextAnnotation_0qhtqn5'>]'
  , q'[        <dc:Bounds x='500' y='-50' width='515' height='190' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0jg4oqm_di' bpmnElement='Association_0jg4oqm'>]'
  , q'[        <di:waypoint x='510' y='365' />]'
  , q'[        <di:waypoint x='463' y='570' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_1y1u9dd_di' bpmnElement='Association_1y1u9dd'>]'
  , q'[        <di:waypoint x='403' y='310' />]'
  , q'[        <di:waypoint x='490' y='34' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0hx891w_di' bpmnElement='Association_0hx891w'>]'
  , q'[        <di:waypoint x='977' y='313' />]'
  , q'[        <di:waypoint x='1140' y='185' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0jgd1xj_di' bpmnElement='Association_0jgd1xj'>]'
  , q'[        <di:waypoint x='1325' y='450' />]'
  , q'[        <di:waypoint x='1428' y='520' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[    </bpmndi:BPMNPlane>]'
  , q'[  </bpmndi:BPMNDiagram>]'
  , q'[</bpmn:definitions>]'
  , q'[]'
  )
));
commit;
end;
/
 
PROMPT >> Example "AA1 - Gateway Tutorial - v0" loaded.
PROMPT >> ========================================================
 


PL/SQL procedure successfully completed.


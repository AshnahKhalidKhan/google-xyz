ashnah [ ~ ]$ cat worker-deployment.yaml 
apiVersion: apps/v1
kind: Deployment
metadata:
  annotations:
    deployment.kubernetes.io/revision: "21"
    meta.helm.sh/release-name: astera
    meta.helm.sh/release-namespace: default
  creationTimestamp: "2025-04-18T19:31:31Z"
  generation: 114
  labels:
    app: worker
    app.kubernetes.io/managed-by: Helm
  name: worker-deployment
  namespace: default
  resourceVersion: "93612288"
  uid: d1a78d46-cc20-4d0e-90c4-971c306f253a
spec:
  progressDeadlineSeconds: 600
  replicas: 4
  revisionHistoryLimit: 10
  selector:
    matchLabels:
      app: worker
  strategy:
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 1
    type: RollingUpdate
  template:
    metadata:
      annotations:
        kubectl.kubernetes.io/restartedAt: "2025-04-23T20:28:02Z"
        prometheus.io/port: "9151"
        prometheus.io/scrape: "true"
      creationTimestamp: null
      labels:
        app: worker
    spec:
      containers:
      - env:
        - name: BUILD_VERSION
          value: v0.422.3
        - name: APP_ROLE
          value: worker
        - name: POD_NAME
          valueFrom:
            fieldRef:
              apiVersion: v1
              fieldPath: metadata.name
        - name: ASPNETCORE_ENVIRONMENT
          value: cloud
        - name: AppConfig__AzureEntraIdConfig__Audience
          value: https://cloudastera.com
        - name: AppConfig__AzureEntraIdConfig__Authority
          value: https://login.microsoftonline.com
        - name: AppConfig__AzureEntraIdConfig__ClientId
          valueFrom:
            secretKeyRef:
              key: AppConfig__AzureEntraIdConfig__ClientId
              name: aad-clientid-secret
        - name: AppConfig__AzureEntraIdConfig__Issuer
          value: https://sts.windows.net
        - name: AppConfig__AzureEntraIdConfig__RedirectUrl
          value: https://cloudastera.com/signin-oidc
        - name: AppConfig__AzureEntraIdConfig__TenantId
          valueFrom:
            secretKeyRef:
              key: AppConfig__AzureEntraIdConfig__TenantId
              name: aad-tenantid-secret
        - name: AppConfig__AzureResourceGroups__0__IsDefault
          value: "true"
        - name: AppConfig__AzureResourceGroups__0__Location
          value: EastUs
        - name: AppConfig__AzureResourceGroups__0__Name
          value: CenterpriseCloudTenantsStorage
        - name: AppConfig__AzureServiceBusConfig__ConnectionString
          valueFrom:
            secretKeyRef:
              key: connection-string
              name: azure-service-bus-playtest
        - name: AppConfig__CloudPortalUrl
          value: https://cloudastera.com
        - name: AppConfig__EnableEventWriting
          value: "false"
        - name: AppConfig__FilePathSubstitution__StorageAccountName
          value: testdevorgtenantstorage
        - name: AppConfig__FilePathSubstitution__Substitute
          value: "true"
        - name: AppConfig__Https
          value: "false"
        - name: AppConfig__IsCloudDeployment
          value: "true"
        - name: AppConfig__IsCurrentlyRunningOnCloud
          value: "true"
        - name: AppConfig__IsQaOrDebug
          value: "true"
        - name: AppConfig__PythonServerConfigInput__ipAddress
          value: python-server-service
        - name: AppConfig__PythonServerConfigInput__port
          value: "80"
        - name: AppConfig__QueueConcurrentMessageLimit
          value: "16"
        - name: AppConfig__QueuePrefetchCount
          value: "16"
        - name: AppConfig__QueueTransport
          value: AzureServiceBus
        - name: AppConfig__RunMonolithServerInTransferService
          value: "false"
        - name: AppConfig__TenantDefaultDatabaseName
          value: AsteraDefault_PlayTest
        - name: AppConfig__UseAzureAuthentication
          value: "true"
        - name: DatabaseInfo__DataProvider
          value: SQL Server
        - name: DatabaseInfo__Database
          value: TenantDb_PlayTest
        - name: DatabaseInfo__Password
          valueFrom:
            secretKeyRef:
              key: DatabaseInfo__Password
              name: db-secret
        - name: DatabaseInfo__Server
          valueFrom:
            secretKeyRef:
              key: DatabaseInfo__Server
              name: db-server-secret
        - name: DatabaseInfo__User
          value: system
        - name: RabbitMqConfig__Host
          value: rabbitmq
        image: cloudmigrationregistry.azurecr.io/worker:v0.422.3
        imagePullPolicy: Always
        name: worker-container
        ports:
        - containerPort: 9151
          protocol: TCP
        readinessProbe:
          failureThreshold: 3
          initialDelaySeconds: 10
          periodSeconds: 5
          successThreshold: 1
          tcpSocket:
            port: 9151
          timeoutSeconds: 1
        resources:
          limits:
            cpu: "1"
          requests:
            cpu: 500m
        securityContext:
          allowPrivilegeEscalation: true
          privileged: true
          runAsUser: 0
        terminationMessagePath: /dev/termination-log
        terminationMessagePolicy: File
      dnsPolicy: ClusterFirst
      restartPolicy: Always
      schedulerName: default-scheduler
      securityContext: {}
      terminationGracePeriodSeconds: 30
status:
  availableReplicas: 7
  conditions:
  - lastTransitionTime: "2025-04-23T20:08:08Z"
    lastUpdateTime: "2025-04-23T20:08:08Z"
    message: Deployment has minimum availability.
    reason: MinimumReplicasAvailable
    status: "True"
    type: Available
  - lastTransitionTime: "2025-04-23T20:13:38Z"
    lastUpdateTime: "2025-04-23T20:13:38Z"
    message: 'unable to delete pods: admission webhook "keda-webhook.default.svc"
      denied the request without explanation'
    reason: FailedDelete
    status: "True"
    type: ReplicaFailure
  - lastTransitionTime: "2025-04-23T11:20:48Z"
    lastUpdateTime: "2025-04-23T20:28:02Z"
    message: Created new replica set "worker-deployment-77854f7464"
    reason: NewReplicaSetCreated
    status: "True"
    type: Progressing
  observedGeneration: 114
  readyReplicas: 7
  replicas: 7
ashnah [ ~ ]$ 
























apiVersion: apps/v1
kind: Deployment
metadata:
  name: pythonserver-deployment
#  namespace: azure-alb-system
  labels:
    app: pythonserver
spec:
  replicas: 1
  selector:
    matchLabels:
      app: pythonserver
  template:
    metadata:
      labels:
        app: pythonserver
    spec:
      containers:
      - name: pythonserver
        image: cloudmigrationregistry.azurecr.io/python-server:v0.4.413
        command: ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5001"] 
        securityContext:
          runAsUser: 0
          allowPrivilegeEscalation: true
          privileged: true
        ports:
        - containerPort: 5001

        resources:                     # Added resource requests and limits
          requests:
            cpu: 250m
            # memory: "512Mi"
          limits:
            cpu: 500m
            # memory: "2Gi"
---
# apiVersion: gateway.networking.k8s.io/v1
# kind: HTTPRoute
# metadata:
#   name: pythonserver-route
#   namespace: azure-alb-system
# spec:
#   parentRefs:
#   - name: gateway-01
#   hostnames:
#   - "pythonserver.cloudastera.com"
#   rules:
#   - matches:
#     - headers:
#       - type: Exact
#         name: X-Azure-FDID
#         value: "49d83dd6-a88c-4909-b691-c6170b692ff7"
#     backendRefs:
#     - name: pythonserver-service
#       port: 80
# ---
apiVersion: v1
kind: Service
metadata:
  name: pythonserver-service
#  namespace: azure-alb-system
  labels:
    app: pythonserver
spec:
  type: ClusterIP
  ports:
    - name: http
      port: 80           # External HTTP port
      targetPort: 5001      # Internal port used by application
      protocol: TCP
    - name: https
      port: 443          # External HTTPS port
      targetPort: 5001      # Internal port used by application
      protocol: TCP
  selector:
    app: pythonserver
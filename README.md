# aws-serverless-chaos-engineering-fis
Clone the workshop code in the local environment:
```git
git clone https://github.com/f-verg/aws-serverless-chaos-engineering-fis.git
```

Navigate in the root folder:
```bash
cd ~/environment/aws-serverless-chaos-engineering-fis
```

Install Cloud9 required dependencies and expand EBS volume for Cloud9:
  
```bash  
. ./python-config.sh
```

Build the SAM template:
```bash
sam build
```

Deploy the SAM template in your account: 
```bash
sam deploy --guided --capabilities CAPABILITY_NAMED_IAM --stack-name aws-sce-fis
```



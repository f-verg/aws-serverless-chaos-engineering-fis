# aws-serverless-chaos-engineering-fis
Clone the workshop code in the local environment:
```git
git clone https://github.com/f-verg/aws-serverless-chaos-engineering-fis.git
```

Navigate in the 

Install Cloud9 required dependencies:
  
```bash  
. ./python-config.sh
```

Build the SAM template:
```bash
cd ~/environment/aws-serverless-chaos-engineering-fis
sam build
```

Deploy the SAM template in your account: 
```bash
sam deploy --guided --capabilities CAPABILITY_NAMED_IAM --stack-name aws-sce-fis
```



# DiveSchedule

## Description

The DiveSchedule project contains the client, server and infratructure for the DiveSchedule application. The app is an all-in-one application for dive centres. It provides fuctionality for admmins to handle bookings, activities and boat management. It porvides functionality for the diver (end-user) a place to record all their dives done with the centre. It allows the diver to upload their information needed by the dive centre to confirm their booking.

## Project progress

All the current tasks and status for the next version of the application can be found on this project board.

https://trello.com/b/lPuFAczV

If you would like to help with any of the task, submit a pull request or contact any of the contributors.

You can also send an email to info@diveschedule.com for any more information.

### Useful commands

#### Run container on database network, mounted directory, in interactive mode:

```bash
docker run -ti --network=diveschedulecom_default -v "$PWD/server-diveschedule":/app --name diveschedulecom_api_1 diveschedulecom_api /bin/bash
```

#### Copy all files from build dir to bucket

```bash
aws s3 cp build/ s3://scubadivedubai.com/ --recursive --acl public-read
```

#### Invalidate cloudfront cache

```bash
aws cloudfront create-invalidation --distribution-id EFYX3XEFZBGN4 --paths "/*"
```

#### Clear contents of current html on server

```bash
ssh -i ~/.ssh/aws-main-us-east-2.pem ubuntu@10.0.0.1 bash -s sudo rm -rf /var/www/html/*
```

#### Copy all files to client build files to server

```bash
scp -i ~/.ssh/identity-file.pem build/* ubuntu@10.0.0.1:/var/www/html/*
```

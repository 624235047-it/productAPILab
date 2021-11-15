//kesinee: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Imtlc2luZWUiLCJyb2xlIjoiYWRtaW4iLCJwYXNzd29yZCI6IiQyYSQxMCRoei9CTGJwUi5tbHZvMmRvRU54S3JlWi83V3RBMlN5ZVRWeXU2OFdweE9HM3JGSHM4c09ZaSIsImlhdCI6MTYwNTM0MjEyNH0.c6aJxuIrZ14q2wGFaJpKBZ0Ob4vMIcovuTrbeA8jtgo
//gusso: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Imd1c3NvIiwicm9sZSI6InVzZXIiLCJwYXNzd29yZCI6IiQyYSQxMCRBcmR6bFVSWkdHLnZLUnRWSTBhRFZlRFQvNW1jNk13eGhMcm9qemVpMU13WE41T2xSVnV4ZSIsImlhdCI6MTYwNTM0MjE2MH0.wTU-yhlqjr_PxHf46KJZicC4WKzl44gjFtmZTmhyYgM
//nasa: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Im5hc2EiLCJyb2xlIjoidXNlciIsInBhc3N3b3JkIjoiJDJhJDEwJEpXcm1lalEuV0RtOHh1RG4wWDdHb3VWRktmRTdUL09vV2NYdzlHRGg4RC5XTnlyanRlYXVHIiwiaWF0IjoxNjA1MzQ0MTU1fQ.4TwuAbnH2iB1xLfJr8mJ-XsEXM1KwZcNdZ6s-jznYYw


const getTokenFrom = request => {
    const authorization = request.get('Authorization')
    if (authorization && authorization.toLowerCase().startsWith('bearer ')) {
      return authorization.substring(7)
    }
    return null
}

exports.sign = function(user, secretkey){

    const jwt  = require('jsonwebtoken');

    try{
        
        return jwt.sign({ id: user._id }, secretkey, { expiresIn: 3600   }); //expires in 1 hour
        //return jwt.sign(user, secretkey); //Never expire
    }
    catch(e){

        return res.status(401).send()
    }
}

exports.verify = function(req, res, next){

    const jwt  = require('jsonwebtoken');
    const secretkey=process.env.SECRET

    let accessToken = getTokenFrom(req)
    

    if (!accessToken){        
        return res.status(403).send()
    }

    let payload

    try{


        jwt.verify(accessToken, secretkey, (err, authData) => {

            
            if(err) {
                return res.status(401).send()
            } else {
                console.log("") 
            }
        });
        
        next()

    }
    catch(e){

        return res.status(401).send()
    }
}
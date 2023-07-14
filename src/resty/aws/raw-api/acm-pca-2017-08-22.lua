local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-08-22",
    "endpointPrefix": "acm-pca",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "ACM-PCA",
    "serviceFullName": "AWS Certificate Manager Private Certificate Authority",
    "serviceId": "ACM PCA",
    "signatureVersion": "v4",
    "targetPrefix": "ACMPrivateCA",
    "uid": "acm-pca-2017-08-22"
  },
  "operations": {
    "CreateCertificateAuthority": {
      "name": "CreateCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCertificateAuthorityRequest"
      },
      "output": {
        "shape": "CreateCertificateAuthorityResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgsException"
        },
        {
          "shape": "InvalidPolicyException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a root or subordinate private certificate authority (CA). You must specify the CA configuration, the certificate revocation list (CRL) configuration, the CA type, and an optional idempotency token to avoid accidental creation of multiple CAs. The CA configuration specifies the name of the algorithm and key size to be used to create the CA private key, the type of signing algorithm that the CA uses, and X.500 subject information. The CRL configuration specifies the CRL expiration period in days (the validity period of the CRL), the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3 bucket that is included in certificates issued by the CA. If successful, this action returns the Amazon Resource Name (ARN) of the CA.</p> <p>ACM Private CAA assets that are stored in Amazon S3 can be protected with encryption. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption\">Encrypting Your CRLs</a>.</p> <note> <p>Both PCA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html\">Configure Access to ACM Private CA</a>.</p> </note>",
      "idempotent": true
    },
    "CreateCertificateAuthorityAuditReport": {
      "name": "CreateCertificateAuthorityAuditReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCertificateAuthorityAuditReportRequest"
      },
      "output": {
        "shape": "CreateCertificateAuthorityAuditReportResponse"
      },
      "errors": [
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidArgsException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Creates an audit report that lists every time that your CA private key is used. The report is saved in the Amazon S3 bucket that you specify on input. The <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html\">IssueCertificate</a> and <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html\">RevokeCertificate</a> actions use the private key. </p> <note> <p>Both PCA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html\">Configure Access to ACM Private CA</a>.</p> </note> <p>ACM Private CAA assets that are stored in Amazon S3 can be protected with encryption. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuditReport.html#audit-report-encryption\">Encrypting Your Audit Reports</a>.</p>",
      "idempotent": true
    },
    "CreatePermission": {
      "name": "CreatePermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePermissionRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "PermissionAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "RequestFailedException"
        }
      ],
      "documentation": "<p>Grants one or more permissions on a private CA to the AWS Certificate Manager (ACM) service principal (<code>acm.amazonaws.com</code>). These permissions allow ACM to issue and renew ACM certificates that reside in the same AWS account as the CA.</p> <p>You can list current permissions with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html\">ListPermissions</a> action and revoke them with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html\">DeletePermission</a> action.</p> <p class=\"title\"> <b>About Permissions</b> </p> <ul> <li> <p>If the private CA and the certificates it issues reside in the same account, you can use <code>CreatePermission</code> to grant permissions for ACM to carry out automatic certificate renewals.</p> </li> <li> <p>For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.</p> </li> <li> <p>If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see <a href=\"acm-pca/latest/userguide/pca-rbp.html\">Using a Resource Based Policy with ACM Private CA</a>.</p> </li> </ul>"
    },
    "DeleteCertificateAuthority": {
      "name": "DeleteCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCertificateAuthorityRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Deletes a private certificate authority (CA). You must provide the Amazon Resource Name (ARN) of the private CA that you want to delete. You can find the ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. </p> <note> <p>Deleting a CA will invalidate other CAs and certificates below it in your CA hierarchy.</p> </note> <p>Before you can delete a CA that you have created and activated, you must disable it. To do this, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action and set the <b>CertificateAuthorityStatus</b> parameter to <code>DISABLED</code>. </p> <p>Additionally, you can delete a CA if you are waiting for it to be created (that is, the status of the CA is <code>CREATING</code>). You can also delete it if the CA has been created but you haven't yet imported the signed certificate into ACM Private CA (that is, the status of the CA is <code>PENDING_CERTIFICATE</code>). </p> <p>When you successfully call <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html\">DeleteCertificateAuthority</a>, the CA's status changes to <code>DELETED</code>. However, the CA won't be permanently deleted until the restoration period has passed. By default, if you do not set the <code>PermanentDeletionTimeInDays</code> parameter, the CA remains restorable for 30 days. You can set the parameter from 7 to 30 days. The <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html\">DescribeCertificateAuthority</a> action returns the time remaining in the restoration window of a private CA in the <code>DELETED</code> state. To restore an eligible CA, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RestoreCertificateAuthority.html\">RestoreCertificateAuthority</a> action.</p>"
    },
    "DeletePermission": {
      "name": "DeletePermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePermissionRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "RequestFailedException"
        }
      ],
      "documentation": "<p>Revokes permissions on a private CA granted to the AWS Certificate Manager (ACM) service principal (acm.amazonaws.com). </p> <p>These permissions allow ACM to issue and renew ACM certificates that reside in the same AWS account as the CA. If you revoke these permissions, ACM will no longer renew the affected certificates automatically.</p> <p>Permissions can be granted with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html\">CreatePermission</a> action and listed with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html\">ListPermissions</a> action. </p> <p class=\"title\"> <b>About Permissions</b> </p> <ul> <li> <p>If the private CA and the certificates it issues reside in the same account, you can use <code>CreatePermission</code> to grant permissions for ACM to carry out automatic certificate renewals.</p> </li> <li> <p>For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.</p> </li> <li> <p>If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see <a href=\"acm-pca/latest/userguide/pca-rbp.html\">Using a Resource Based Policy with ACM Private CA</a>.</p> </li> </ul>"
    },
    "DeletePolicy": {
      "name": "DeletePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePolicyRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "LockoutPreventedException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the resource-based policy attached to a private CA. Deletion will remove any access that the policy has granted. If there is no policy attached to the private CA, this action will return successful.</p> <p>If you delete a policy that was applied through AWS Resource Access Manager (RAM), the CA will be removed from all shares in which it was included. </p> <p>The AWS Certificate Manager Service Linked Role that the policy supports is not affected when you delete the policy. </p> <p>The current policy can be shown with <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetPolicy.html\">GetPolicy</a> and updated with <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html\">PutPolicy</a>.</p> <p class=\"title\"> <b>About Policies</b> </p> <ul> <li> <p>A policy grants access on a private CA to an AWS customer account, to AWS Organizations, or to an AWS Organizations unit. Policies are under the control of a CA administrator. For more information, see <a href=\"acm-pca/latest/userguide/pca-rbp.html\">Using a Resource Based Policy with ACM Private CA</a>.</p> </li> <li> <p>A policy permits a user of AWS Certificate Manager (ACM) to issue ACM certificates signed by a CA in another account.</p> </li> <li> <p>For ACM to manage automatic renewal of these certificates, the ACM user must configure a Service Linked Role (SLR). The SLR allows the ACM service to assume the identity of the user, subject to confirmation against the ACM Private CA policy. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html\">Using a Service Linked Role with ACM</a>.</p> </li> <li> <p>Updates made in AWS Resource Manager (RAM) are reflected in policies. For more information, see <a href=\"acm-pca/latest/userguide/pca-ram.html\">Using AWS Resource Access Manager (RAM) with ACM Private CA</a>.</p> </li> </ul>"
    },
    "DescribeCertificateAuthority": {
      "name": "DescribeCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCertificateAuthorityRequest"
      },
      "output": {
        "shape": "DescribeCertificateAuthorityResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Lists information about your private certificate authority (CA) or one that has been shared with you. You specify the private CA on input by its ARN (Amazon Resource Name). The output contains the status of your CA. This can be any of the following: </p> <ul> <li> <p> <code>CREATING</code> - ACM Private CA is creating your private certificate authority.</p> </li> <li> <p> <code>PENDING_CERTIFICATE</code> - The certificate is pending. You must use your ACM Private CA-hosted or on-premises root or subordinate CA to sign your private CA CSR and then import it into PCA. </p> </li> <li> <p> <code>ACTIVE</code> - Your private CA is active.</p> </li> <li> <p> <code>DISABLED</code> - Your private CA has been disabled.</p> </li> <li> <p> <code>EXPIRED</code> - Your private CA certificate has expired.</p> </li> <li> <p> <code>FAILED</code> - Your private CA has failed. Your CA can fail because of problems such a network outage or backend AWS failure or other errors. A failed CA can never return to the pending state. You must create a new CA. </p> </li> <li> <p> <code>DELETED</code> - Your private CA is within the restoration period, after which it is permanently deleted. The length of time remaining in the CA's restoration period is also included in this action's output.</p> </li> </ul>"
    },
    "DescribeCertificateAuthorityAuditReport": {
      "name": "DescribeCertificateAuthorityAuditReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCertificateAuthorityAuditReportRequest"
      },
      "output": {
        "shape": "DescribeCertificateAuthorityAuditReportResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidArgsException"
        }
      ],
      "documentation": "<p>Lists information about a specific audit report created by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html\">CreateCertificateAuthorityAuditReport</a> action. Audit information is created every time the certificate authority (CA) private key is used. The private key is used when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html\">IssueCertificate</a> action or the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html\">RevokeCertificate</a> action. </p>"
    },
    "GetCertificate": {
      "name": "GetCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCertificateRequest"
      },
      "output": {
        "shape": "GetCertificateResponse"
      },
      "errors": [
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Retrieves a certificate from your private CA or one that has been shared with you. The ARN of the certificate is returned when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html\">IssueCertificate</a> action. You must specify both the ARN of your private CA and the ARN of the issued certificate when calling the <b>GetCertificate</b> action. You can retrieve the certificate if it is in the <b>ISSUED</b> state. You can call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html\">CreateCertificateAuthorityAuditReport</a> action to create a report that contains information about all of the certificates issued and revoked by your private CA. </p>"
    },
    "GetCertificateAuthorityCertificate": {
      "name": "GetCertificateAuthorityCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCertificateAuthorityCertificateRequest"
      },
      "output": {
        "shape": "GetCertificateAuthorityCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Retrieves the certificate and certificate chain for your private certificate authority (CA) or one that has been shared with you. Both the certificate and the chain are base64 PEM-encoded. The chain does not include the CA certificate. Each certificate in the chain signs the one before it. </p>"
    },
    "GetCertificateAuthorityCsr": {
      "name": "GetCertificateAuthorityCsr",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCertificateAuthorityCsrRequest"
      },
      "output": {
        "shape": "GetCertificateAuthorityCsrResponse"
      },
      "errors": [
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Retrieves the certificate signing request (CSR) for your private certificate authority (CA). The CSR is created when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. Sign the CSR with your ACM Private CA-hosted or on-premises root or subordinate CA. Then import the signed certificate back into ACM Private CA by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html\">ImportCertificateAuthorityCertificate</a> action. The CSR is returned as a base64 PEM-encoded string. </p>"
    },
    "GetPolicy": {
      "name": "GetPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPolicyRequest"
      },
      "output": {
        "shape": "GetPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the resource-based policy attached to a private CA. If either the private CA resource or the policy cannot be found, this action returns a <code>ResourceNotFoundException</code>. </p> <p>The policy can be attached or updated with <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html\">PutPolicy</a> and removed with <a href=\"acm-pca/latest/APIReference/API_DeletePolicy.html\">DeletePolicy</a>.</p> <p class=\"title\"> <b>About Policies</b> </p> <ul> <li> <p>A policy grants access on a private CA to an AWS customer account, to AWS Organizations, or to an AWS Organizations unit. Policies are under the control of a CA administrator. For more information, see <a href=\"acm-pca/latest/userguide/pca-rbp.html\">Using a Resource Based Policy with ACM Private CA</a>.</p> </li> <li> <p>A policy permits a user of AWS Certificate Manager (ACM) to issue ACM certificates signed by a CA in another account.</p> </li> <li> <p>For ACM to manage automatic renewal of these certificates, the ACM user must configure a Service Linked Role (SLR). The SLR allows the ACM service to assume the identity of the user, subject to confirmation against the ACM Private CA policy. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html\">Using a Service Linked Role with ACM</a>.</p> </li> <li> <p>Updates made in AWS Resource Manager (RAM) are reflected in policies. For more information, see <a href=\"acm-pca/latest/userguide/pca-ram.html\">Using AWS Resource Access Manager (RAM) with ACM Private CA</a>.</p> </li> </ul>"
    },
    "ImportCertificateAuthorityCertificate": {
      "name": "ImportCertificateAuthorityCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportCertificateAuthorityCertificateRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "MalformedCertificateException"
        },
        {
          "shape": "CertificateMismatchException"
        }
      ],
      "documentation": "<p>Imports a signed private CA certificate into ACM Private CA. This action is used when you are using a chain of trust whose root is located outside ACM Private CA. Before you can call this action, the following preparations must in place:</p> <ol> <li> <p>In ACM Private CA, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action to create the private CA that that you plan to back with the imported certificate.</p> </li> <li> <p>Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCsr.html\">GetCertificateAuthorityCsr</a> action to generate a certificate signing request (CSR).</p> </li> <li> <p>Sign the CSR using a root or intermediate CA hosted by either an on-premises PKI hierarchy or by a commercial CA.</p> </li> <li> <p>Create a certificate chain and copy the signed certificate and the certificate chain to your working directory.</p> </li> </ol> <p>The following requirements apply when you import a CA certificate.</p> <ul> <li> <p>You cannot import a non-self-signed certificate for use as a root CA.</p> </li> <li> <p>You cannot import a self-signed certificate for use as a subordinate CA.</p> </li> <li> <p>Your certificate chain must not include the private CA certificate that you are importing.</p> </li> <li> <p>Your ACM Private CA-hosted or on-premises CA certificate must be the last certificate in your chain. The subordinate certificate, if any, that your root CA signed must be next to last. The subordinate certificate signed by the preceding subordinate CA must come next, and so on until your chain is built. </p> </li> <li> <p>The chain must be PEM-encoded.</p> </li> <li> <p>The maximum allowed size of a certificate is 32 KB.</p> </li> <li> <p>The maximum allowed size of a certificate chain is 2 MB.</p> </li> </ul> <p> <i>Enforcement of Critical Constraints</i> </p> <p>ACM Private CA allows the following extensions to be marked critical in the imported CA certificate or chain.</p> <ul> <li> <p>Basic constraints (<i>must</i> be marked critical)</p> </li> <li> <p>Subject alternative names</p> </li> <li> <p>Key usage</p> </li> <li> <p>Extended key usage</p> </li> <li> <p>Authority key identifier</p> </li> <li> <p>Subject key identifier</p> </li> <li> <p>Issuer alternative name</p> </li> <li> <p>Subject directory attributes</p> </li> <li> <p>Subject information access</p> </li> <li> <p>Certificate policies</p> </li> <li> <p>Policy mappings</p> </li> <li> <p>Inhibit anyPolicy</p> </li> </ul> <p>ACM Private CA rejects the following extensions when they are marked critical in an imported CA certificate or chain.</p> <ul> <li> <p>Name constraints</p> </li> <li> <p>Policy constraints</p> </li> <li> <p>CRL distribution points</p> </li> <li> <p>Authority information access</p> </li> <li> <p>Freshest CRL</p> </li> <li> <p>Any other extension</p> </li> </ul>"
    },
    "IssueCertificate": {
      "name": "IssueCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "IssueCertificateRequest"
      },
      "output": {
        "shape": "IssueCertificateResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidArgsException"
        },
        {
          "shape": "MalformedCSRException"
        }
      ],
      "documentation": "<p>Uses your private certificate authority (CA), or one that has been shared with you, to issue a client certificate. This action returns the Amazon Resource Name (ARN) of the certificate. You can retrieve the certificate by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html\">GetCertificate</a> action and specifying the ARN. </p> <note> <p>You cannot use the ACM <b>ListCertificateAuthorities</b> action to retrieve the ARNs of the certificates that you issue by using ACM Private CA.</p> </note>",
      "idempotent": true
    },
    "ListCertificateAuthorities": {
      "name": "ListCertificateAuthorities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCertificateAuthoritiesRequest"
      },
      "output": {
        "shape": "ListCertificateAuthoritiesResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists the private certificate authorities that you created by using the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action.</p>"
    },
    "ListPermissions": {
      "name": "ListPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPermissionsRequest"
      },
      "output": {
        "shape": "ListPermissionsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "RequestFailedException"
        }
      ],
      "documentation": "<p>List all permissions on a private CA, if any, granted to the AWS Certificate Manager (ACM) service principal (acm.amazonaws.com). </p> <p>These permissions allow ACM to issue and renew ACM certificates that reside in the same AWS account as the CA. </p> <p>Permissions can be granted with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html\">CreatePermission</a> action and revoked with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html\">DeletePermission</a> action.</p> <p class=\"title\"> <b>About Permissions</b> </p> <ul> <li> <p>If the private CA and the certificates it issues reside in the same account, you can use <code>CreatePermission</code> to grant permissions for ACM to carry out automatic certificate renewals.</p> </li> <li> <p>For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.</p> </li> <li> <p>If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see <a href=\"acm-pca/latest/userguide/pca-rbp.html\">Using a Resource Based Policy with ACM Private CA</a>.</p> </li> </ul>"
    },
    "ListTags": {
      "name": "ListTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsRequest"
      },
      "output": {
        "shape": "ListTagsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Lists the tags, if any, that are associated with your private CA or one that has been shared with you. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html\">TagCertificateAuthority</a> action to add one or more tags to your CA. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html\">UntagCertificateAuthority</a> action to remove tags. </p>"
    },
    "PutPolicy": {
      "name": "PutPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutPolicyRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidPolicyException"
        },
        {
          "shape": "LockoutPreventedException"
        },
        {
          "shape": "RequestFailedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Attaches a resource-based policy to a private CA. </p> <p>A policy can also be applied by <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html\">sharing</a> a private CA through AWS Resource Access Manager (RAM).</p> <p>The policy can be displayed with <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetPolicy.html\">GetPolicy</a> and removed with <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePolicy.html\">DeletePolicy</a>.</p> <p class=\"title\"> <b>About Policies</b> </p> <ul> <li> <p>A policy grants access on a private CA to an AWS customer account, to AWS Organizations, or to an AWS Organizations unit. Policies are under the control of a CA administrator. For more information, see <a href=\"acm-pca/latest/userguide/pca-rbp.html\">Using a Resource Based Policy with ACM Private CA</a>.</p> </li> <li> <p>A policy permits a user of AWS Certificate Manager (ACM) to issue ACM certificates signed by a CA in another account.</p> </li> <li> <p>For ACM to manage automatic renewal of these certificates, the ACM user must configure a Service Linked Role (SLR). The SLR allows the ACM service to assume the identity of the user, subject to confirmation against the ACM Private CA policy. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html\">Using a Service Linked Role with ACM</a>.</p> </li> <li> <p>Updates made in AWS Resource Manager (RAM) are reflected in policies. For more information, see <a href=\"acm-pca/latest/userguide/pca-ram.html\">Using AWS Resource Access Manager (RAM) with ACM Private CA</a>.</p> </li> </ul>"
    },
    "RestoreCertificateAuthority": {
      "name": "RestoreCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreCertificateAuthorityRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Restores a certificate authority (CA) that is in the <code>DELETED</code> state. You can restore a CA during the period that you defined in the <b>PermanentDeletionTimeInDays</b> parameter of the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html\">DeleteCertificateAuthority</a> action. Currently, you can specify 7 to 30 days. If you did not specify a <b>PermanentDeletionTimeInDays</b> value, by default you can restore the CA at any time in a 30 day period. You can check the time remaining in the restoration period of a private CA in the <code>DELETED</code> state by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html\">DescribeCertificateAuthority</a> or <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> actions. The status of a restored CA is set to its pre-deletion status when the <b>RestoreCertificateAuthority</b> action returns. To change its status to <code>ACTIVE</code>, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action. If the private CA was in the <code>PENDING_CERTIFICATE</code> state at deletion, you must use the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html\">ImportCertificateAuthorityCertificate</a> action to import a certificate authority into the private CA before it can be activated. You cannot restore a CA after the restoration period has ended.</p>"
    },
    "RevokeCertificate": {
      "name": "RevokeCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeCertificateRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestAlreadyProcessedException"
        },
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "RequestFailedException"
        }
      ],
      "documentation": "<p>Revokes a certificate that was issued inside ACM Private CA. If you enable a certificate revocation list (CRL) when you create or update your private CA, information about the revoked certificates will be included in the CRL. ACM Private CA writes the CRL to an S3 bucket that you specify. A CRL is typically updated approximately 30 minutes after a certificate is revoked. If for any reason the CRL update fails, ACM Private CA attempts makes further attempts every 15 minutes. With Amazon CloudWatch, you can create alarms for the metrics <code>CRLGenerated</code> and <code>MisconfiguredCRLBucket</code>. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCloudWatch.html\">Supported CloudWatch Metrics</a>.</p> <note> <p>Both PCA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html\">Configure Access to ACM Private CA</a>.</p> </note> <p>ACM Private CA also writes revocation information to the audit report. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html\">CreateCertificateAuthorityAuditReport</a>.</p> <note> <p>You cannot revoke a root CA self-signed certificate.</p> </note>"
    },
    "TagCertificateAuthority": {
      "name": "TagCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagCertificateAuthorityRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Adds one or more tags to your private CA. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the private CA on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one private CA if you want to identify a specific characteristic of that CA, or you can apply the same tag to multiple private CAs if you want to filter for a common relationship among those CAs. To remove one or more tags, use the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html\">UntagCertificateAuthority</a> action. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html\">ListTags</a> action to see what tags are associated with your CA. </p>"
    },
    "UntagCertificateAuthority": {
      "name": "UntagCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagCertificateAuthorityRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidTagException"
        }
      ],
      "documentation": "<p>Remove one or more tags from your private CA. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this action, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a private CA, use the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html\">TagCertificateAuthority</a>. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html\">ListTags</a> action to see what tags are associated with your CA. </p>"
    },
    "UpdateCertificateAuthority": {
      "name": "UpdateCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCertificateAuthorityRequest"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgsException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidPolicyException"
        }
      ],
      "documentation": "<p>Updates the status or configuration of a private certificate authority (CA). Your private CA must be in the <code>ACTIVE</code> or <code>DISABLED</code> state before you can update it. You can disable a private CA that is in the <code>ACTIVE</code> state or make a CA that is in the <code>DISABLED</code> state active again.</p> <note> <p>Both PCA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html\">Configure Access to ACM Private CA</a>.</p> </note>"
    }
  },
  "shapes": {
    "ASN1PrintableString64": {
      "type": "string",
      "max": 64,
      "min": 0,
      "pattern": "[a-zA-Z0-9'()+-.?:/= ]*"
    },
    "ASN1Subject": {
      "type": "structure",
      "members": {
        "Country": {
          "shape": "CountryCodeString",
          "documentation": "<p>Two-digit code that specifies the country in which the certificate subject located.</p>"
        },
        "Organization": {
          "shape": "String64",
          "documentation": "<p>Legal name of the organization with which the certificate subject is affiliated. </p>"
        },
        "OrganizationalUnit": {
          "shape": "String64",
          "documentation": "<p>A subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated.</p>"
        },
        "DistinguishedNameQualifier": {
          "shape": "ASN1PrintableString64",
          "documentation": "<p>Disambiguating information for the certificate subject.</p>"
        },
        "State": {
          "shape": "String128",
          "documentation": "<p>State in which the subject of the certificate is located.</p>"
        },
        "CommonName": {
          "shape": "String64",
          "documentation": "<p>Fully qualified domain name (FQDN) associated with the certificate subject.</p>"
        },
        "SerialNumber": {
          "shape": "ASN1PrintableString64",
          "documentation": "<p>The certificate serial number.</p>"
        },
        "Locality": {
          "shape": "String128",
          "documentation": "<p>The locality (such as a city or town) in which the certificate subject is located.</p>"
        },
        "Title": {
          "shape": "String64",
          "documentation": "<p>A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the certificate subject.</p>"
        },
        "Surname": {
          "shape": "String40",
          "documentation": "<p>Family name. In the US and the UK, for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first.</p>"
        },
        "GivenName": {
          "shape": "String16",
          "documentation": "<p>First name.</p>"
        },
        "Initials": {
          "shape": "String5",
          "documentation": "<p>Concatenation that typically contains the first letter of the <b>GivenName</b>, the first letter of the middle name if one exists, and the first letter of the <b>SurName</b>.</p>"
        },
        "Pseudonym": {
          "shape": "String128",
          "documentation": "<p>Typically a shortened version of a longer <b>GivenName</b>. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza.</p>"
        },
        "GenerationQualifier": {
          "shape": "String3",
          "documentation": "<p>Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third.</p>"
        }
      },
      "documentation": "<p>Contains information about the certificate subject. The certificate can be one issued by your private certificate authority (CA) or it can be your private CA certificate. The <b>Subject</b> field in the certificate identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service. The <b>Subject</b> must contain an X.500 distinguished name (DN). A DN is a sequence of relative distinguished names (RDNs). The RDNs are separated by commas in the certificate. The DN must be unique for each entity, but your private CA can issue more than one certificate with the same DN to the same entity. </p>"
    },
    "AWSPolicy": {
      "type": "string",
      "max": 20480,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "AccountId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "[0-9]+"
    },
    "ActionList": {
      "type": "list",
      "member": {
        "shape": "ActionType"
      },
      "max": 3,
      "min": 1
    },
    "ActionType": {
      "type": "string",
      "enum": [
        "IssueCertificate",
        "GetCertificate",
        "ListPermissions"
      ]
    },
    "Arn": {
      "type": "string",
      "max": 200,
      "min": 5,
      "pattern": "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"
    },
    "AuditReportId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}"
    },
    "AuditReportResponseFormat": {
      "type": "string",
      "enum": [
        "JSON",
        "CSV"
      ]
    },
    "AuditReportStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "SUCCESS",
        "FAILED"
      ]
    },
    "Boolean": {
      "type": "boolean"
    },
    "CertificateAuthorities": {
      "type": "list",
      "member": {
        "shape": "CertificateAuthority"
      }
    },
    "CertificateAuthority": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>Amazon Resource Name (ARN) for your private certificate authority (CA). The format is <code> <i>12345678-1234-1234-1234-123456789012</i> </code>.</p>"
        },
        "OwnerAccount": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID that owns the certificate authority.</p>"
        },
        "CreatedAt": {
          "shape": "TStamp",
          "documentation": "<p>Date and time at which your private CA was created.</p>"
        },
        "LastStateChangeAt": {
          "shape": "TStamp",
          "documentation": "<p>Date and time at which your private CA was last updated.</p>"
        },
        "Type": {
          "shape": "CertificateAuthorityType",
          "documentation": "<p>Type of your private CA.</p>"
        },
        "Serial": {
          "shape": "String",
          "documentation": "<p>Serial number of your private CA.</p>"
        },
        "Status": {
          "shape": "CertificateAuthorityStatus",
          "documentation": "<p>Status of your private CA.</p>"
        },
        "NotBefore": {
          "shape": "TStamp",
          "documentation": "<p>Date and time before which your private CA certificate is not valid.</p>"
        },
        "NotAfter": {
          "shape": "TStamp",
          "documentation": "<p>Date and time after which your private CA certificate is not valid.</p>"
        },
        "FailureReason": {
          "shape": "FailureReason",
          "documentation": "<p>Reason the request to create your private CA failed.</p>"
        },
        "CertificateAuthorityConfiguration": {
          "shape": "CertificateAuthorityConfiguration",
          "documentation": "<p>Your private CA configuration.</p>"
        },
        "RevocationConfiguration": {
          "shape": "RevocationConfiguration",
          "documentation": "<p>Information about the certificate revocation list (CRL) created and maintained by your private CA. </p>"
        },
        "RestorableUntil": {
          "shape": "TStamp",
          "documentation": "<p>The period during which a deleted CA can be restored. For more information, see the <code>PermanentDeletionTimeInDays</code> parameter of the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html\">DeleteCertificateAuthorityRequest</a> action. </p>"
        }
      },
      "documentation": "<p>Contains information about your private certificate authority (CA). Your private CA can issue and revoke X.509 digital certificates. Digital certificates verify that the entity named in the certificate <b>Subject</b> field owns or controls the public key contained in the <b>Subject Public Key Info</b> field. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action to create your private CA. You must then call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCertificate.html\">GetCertificateAuthorityCertificate</a> action to retrieve a private CA certificate signing request (CSR). Sign the CSR with your ACM Private CA-hosted or on-premises root or subordinate CA certificate. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html\">ImportCertificateAuthorityCertificate</a> action to import the signed certificate into AWS Certificate Manager (ACM). </p>"
    },
    "CertificateAuthorityConfiguration": {
      "type": "structure",
      "required": [
        "KeyAlgorithm",
        "SigningAlgorithm",
        "Subject"
      ],
      "members": {
        "KeyAlgorithm": {
          "shape": "KeyAlgorithm",
          "documentation": "<p>Type of the public key algorithm and size, in bits, of the key pair that your CA creates when it issues a certificate. When you create a subordinate CA, you must use a key algorithm supported by the parent CA.</p>"
        },
        "SigningAlgorithm": {
          "shape": "SigningAlgorithm",
          "documentation": "<p>Name of the algorithm your private CA uses to sign certificate requests.</p> <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter used to sign certificates when they are issued.</p>"
        },
        "Subject": {
          "shape": "ASN1Subject",
          "documentation": "<p>Structure that contains X.500 distinguished name information for your private CA.</p>"
        }
      },
      "documentation": "<p>Contains configuration information for your private certificate authority (CA). This includes information about the class of public key algorithm and the key pair that your private CA creates when it issues a certificate. It also includes the signature algorithm that it uses when issuing certificates, and its X.500 distinguished name. You must specify this information when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. </p>"
    },
    "CertificateAuthorityStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "PENDING_CERTIFICATE",
        "ACTIVE",
        "DELETED",
        "DISABLED",
        "EXPIRED",
        "FAILED"
      ]
    },
    "CertificateAuthorityType": {
      "type": "string",
      "enum": [
        "ROOT",
        "SUBORDINATE"
      ]
    },
    "CertificateBody": {
      "type": "string"
    },
    "CertificateBodyBlob": {
      "type": "blob",
      "max": 32768,
      "min": 1
    },
    "CertificateChain": {
      "type": "string"
    },
    "CertificateChainBlob": {
      "type": "blob",
      "max": 2097152,
      "min": 0
    },
    "CountryCodeString": {
      "type": "string",
      "max": 2,
      "min": 2,
      "pattern": "[A-Za-z]{2}"
    },
    "CreateCertificateAuthorityAuditReportRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "S3BucketName",
        "AuditReportResponseFormat"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>.</p>"
        },
        "S3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the S3 bucket that will contain the audit report.</p>"
        },
        "AuditReportResponseFormat": {
          "shape": "AuditReportResponseFormat",
          "documentation": "<p>The format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>"
        }
      }
    },
    "CreateCertificateAuthorityAuditReportResponse": {
      "type": "structure",
      "members": {
        "AuditReportId": {
          "shape": "AuditReportId",
          "documentation": "<p>An alphanumeric string that contains a report identifier.</p>"
        },
        "S3Key": {
          "shape": "S3Key",
          "documentation": "<p>The <b>key</b> that uniquely identifies the report file in your S3 bucket.</p>"
        }
      }
    },
    "CreateCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityConfiguration",
        "CertificateAuthorityType"
      ],
      "members": {
        "CertificateAuthorityConfiguration": {
          "shape": "CertificateAuthorityConfiguration",
          "documentation": "<p>Name and bit size of the private key algorithm, the name of the signing algorithm, and X.500 certificate subject information.</p>"
        },
        "RevocationConfiguration": {
          "shape": "RevocationConfiguration",
          "documentation": "<p>Contains a Boolean value that you can use to enable a certification revocation list (CRL) for the CA, the name of the S3 bucket to which ACM Private CA will write the CRL, and an optional CNAME alias that you can use to hide the name of your bucket in the <b>CRL Distribution Points</b> extension of your CA certificate. For more information, see the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html\">CrlConfiguration</a> structure. </p>"
        },
        "CertificateAuthorityType": {
          "shape": "CertificateAuthorityType",
          "documentation": "<p>The type of the certificate authority.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>Alphanumeric string that can be used to distinguish between calls to <b>CreateCertificateAuthority</b>. For a given token, ACM Private CA creates exactly one CA. If you issue a subsequent call using the same token, ACM Private CA returns the ARN of the existing CA and takes no further action. If you change the idempotency token across multiple calls, ACM Private CA creates a unique CA for each unique token.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Key-value pairs that will be attached to the new private CA. You can associate up to 50 tags with a private CA. For information using tags with IAM to manage permissions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p>"
        }
      }
    },
    "CreateCertificateAuthorityResponse": {
      "type": "structure",
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>If successful, the Amazon Resource Name (ARN) of the certificate authority (CA). This is of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        }
      }
    },
    "CreatePermissionRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "Principal",
        "Actions"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        },
        "Principal": {
          "shape": "Principal",
          "documentation": "<p>The AWS service or identity that receives the permission. At this time, the only valid principal is <code>acm.amazonaws.com</code>.</p>"
        },
        "SourceAccount": {
          "shape": "AccountId",
          "documentation": "<p>The ID of the calling account.</p>"
        },
        "Actions": {
          "shape": "ActionList",
          "documentation": "<p>The actions that the specified AWS service principal can use. These include <code>IssueCertificate</code>, <code>GetCertificate</code>, and <code>ListPermissions</code>.</p>"
        }
      }
    },
    "CrlConfiguration": {
      "type": "structure",
      "required": [
        "Enabled"
      ],
      "members": {
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. You can use this value to enable certificate revocation for a new CA when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action or for an existing CA when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action. </p>",
          "box": true
        },
        "ExpirationInDays": {
          "shape": "Integer1To5000",
          "documentation": "<p>Number of days until a certificate expires.</p>",
          "box": true
        },
        "CustomCname": {
          "shape": "String253",
          "documentation": "<p>Name inserted into the certificate <b>CRL Distribution Points</b> extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public.</p>"
        },
        "S3BucketName": {
          "shape": "String3To255",
          "documentation": "<p>Name of the S3 bucket that contains the CRL. If you do not provide a value for the <b>CustomCname</b> argument, the name of your S3 bucket is placed into the <b>CRL Distribution Points</b> extension of the issued certificate. You can change the name of your bucket by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action. You must specify a bucket policy that allows ACM Private CA to write the CRL to your bucket.</p>"
        }
      },
      "documentation": "<p>Contains configuration information for a certificate revocation list (CRL). Your private certificate authority (CA) creates base CRLs. Delta CRLs are not supported. You can enable CRLs for your new or an existing private CA by setting the <b>Enabled</b> parameter to <code>true</code>. Your private CA writes CRLs to an S3 bucket that you specify in the <b>S3BucketName</b> parameter. You can hide the name of your bucket by specifying a value for the <b>CustomCname</b> parameter. Your private CA copies the CNAME or the S3 bucket name to the <b>CRL Distribution Points</b> extension of each certificate it issues. Your S3 bucket policy must give write permission to ACM Private CA. </p> <p>ACM Private CAA assets that are stored in Amazon S3 can be protected with encryption. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption\">Encrypting Your CRLs</a>.</p> <p>Your private CA uses the value in the <b>ExpirationInDays</b> parameter to calculate the <b>nextUpdate</b> field in the CRL. The CRL is refreshed at 1/2 the age of next update or when a certificate is revoked. When a certificate is revoked, it is recorded in the next CRL that is generated and in the next audit report. Only time valid certificates are listed in the CRL. Expired certificates are not included. </p> <p>CRLs contain the following fields:</p> <ul> <li> <p> <b>Version</b>: The current version number defined in RFC 5280 is V2. The integer value is 0x1. </p> </li> <li> <p> <b>Signature Algorithm</b>: The name of the algorithm used to sign the CRL.</p> </li> <li> <p> <b>Issuer</b>: The X.500 distinguished name of your private CA that issued the CRL.</p> </li> <li> <p> <b>Last Update</b>: The issue date and time of this CRL.</p> </li> <li> <p> <b>Next Update</b>: The day and time by which the next CRL will be issued.</p> </li> <li> <p> <b>Revoked Certificates</b>: List of revoked certificates. Each list item contains the following information.</p> <ul> <li> <p> <b>Serial Number</b>: The serial number, in hexadecimal format, of the revoked certificate.</p> </li> <li> <p> <b>Revocation Date</b>: Date and time the certificate was revoked.</p> </li> <li> <p> <b>CRL Entry Extensions</b>: Optional extensions for the CRL entry.</p> <ul> <li> <p> <b>X509v3 CRL Reason Code</b>: Reason the certificate was revoked.</p> </li> </ul> </li> </ul> </li> <li> <p> <b>CRL Extensions</b>: Optional extensions for the CRL.</p> <ul> <li> <p> <b>X509v3 Authority Key Identifier</b>: Identifies the public key associated with the private key used to sign the certificate.</p> </li> <li> <p> <b>X509v3 CRL Number:</b>: Decimal sequence number for the CRL.</p> </li> </ul> </li> <li> <p> <b>Signature Algorithm</b>: Algorithm used by your private CA to sign the CRL.</p> </li> <li> <p> <b>Signature Value</b>: Signature computed over the CRL.</p> </li> </ul> <p>Certificate revocation lists created by ACM Private CA are DER-encoded. You can use the following OpenSSL command to list a CRL.</p> <p> <code>openssl crl -inform DER -text -in <i>crl_path</i> -noout</code> </p>"
    },
    "CsrBlob": {
      "type": "blob",
      "max": 32768,
      "min": 1
    },
    "CsrBody": {
      "type": "string"
    },
    "DeleteCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        },
        "PermanentDeletionTimeInDays": {
          "shape": "PermanentDeletionTimeInDays",
          "documentation": "<p>The number of days to make a CA restorable after it has been deleted. This can be anywhere from 7 to 30 days, with 30 being the default.</p>"
        }
      }
    },
    "DeletePermissionRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "Principal"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Number (ARN) of the private CA that issued the permissions. You can find the CA's ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        },
        "Principal": {
          "shape": "Principal",
          "documentation": "<p>The AWS service or identity that will have its CA permissions revoked. At this time, the only valid service principal is <code>acm.amazonaws.com</code> </p>"
        },
        "SourceAccount": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account that calls this action.</p>"
        }
      }
    },
    "DeletePolicyRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Number (ARN) of the private CA that will have its policy deleted. You can find the CA's ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. The ARN value must have the form <code>arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab</code>. </p>"
        }
      }
    },
    "DescribeCertificateAuthorityAuditReportRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "AuditReportId"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        },
        "AuditReportId": {
          "shape": "AuditReportId",
          "documentation": "<p>The report ID returned by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html\">CreateCertificateAuthorityAuditReport</a> action.</p>"
        }
      }
    },
    "DescribeCertificateAuthorityAuditReportResponse": {
      "type": "structure",
      "members": {
        "AuditReportStatus": {
          "shape": "AuditReportStatus",
          "documentation": "<p>Specifies whether report creation is in progress, has succeeded, or has failed.</p>"
        },
        "S3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>Name of the S3 bucket that contains the report.</p>"
        },
        "S3Key": {
          "shape": "S3Key",
          "documentation": "<p>S3 <b>key</b> that uniquely identifies the report file in your S3 bucket.</p>"
        },
        "CreatedAt": {
          "shape": "TStamp",
          "documentation": "<p>The date and time at which the report was created.</p>"
        }
      }
    },
    "DescribeCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        }
      }
    },
    "DescribeCertificateAuthorityResponse": {
      "type": "structure",
      "members": {
        "CertificateAuthority": {
          "shape": "CertificateAuthority",
          "documentation": "<p>A <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CertificateAuthority.html\">CertificateAuthority</a> structure that contains information about your private CA.</p>"
        }
      }
    },
    "FailureReason": {
      "type": "string",
      "enum": [
        "REQUEST_TIMED_OUT",
        "UNSUPPORTED_ALGORITHM",
        "OTHER"
      ]
    },
    "GetCertificateAuthorityCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        }
      }
    },
    "GetCertificateAuthorityCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "CertificateBody",
          "documentation": "<p>Base64-encoded certificate authority (CA) certificate.</p>"
        },
        "CertificateChain": {
          "shape": "CertificateChain",
          "documentation": "<p>Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. If this is a root CA, the value will be null.</p>"
        }
      }
    },
    "GetCertificateAuthorityCsrRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        }
      }
    },
    "GetCertificateAuthorityCsrResponse": {
      "type": "structure",
      "members": {
        "Csr": {
          "shape": "CsrBody",
          "documentation": "<p>The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.</p>"
        }
      }
    },
    "GetCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "CertificateArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"
        },
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>"
        }
      }
    },
    "GetCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "CertificateBody",
          "documentation": "<p>The base64 PEM-encoded certificate specified by the <code>CertificateArn</code> parameter.</p>"
        },
        "CertificateChain": {
          "shape": "CertificateChain",
          "documentation": "<p>The base64 PEM-encoded certificate chain that chains up to the on-premises root CA certificate that you used to sign your private CA certificate. </p>"
        }
      }
    },
    "GetPolicyRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Number (ARN) of the private CA that will have its policy retrieved. You can find the CA's ARN by calling the ListCertificateAuthorities action. </p>"
        }
      }
    },
    "GetPolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "AWSPolicy",
          "documentation": "<p>The policy attached to the private CA as a JSON document.</p>"
        }
      }
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 36,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*"
    },
    "ImportCertificateAuthorityCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "Certificate"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "Certificate": {
          "shape": "CertificateBodyBlob",
          "documentation": "<p>The PEM-encoded certificate for a private CA. This may be a self-signed certificate in the case of a root CA, or it may be signed by another CA that you control.</p>"
        },
        "CertificateChain": {
          "shape": "CertificateChainBlob",
          "documentation": "<p>A PEM-encoded file that contains all of your certificates, other than the certificate you're importing, chaining up to your root CA. Your ACM Private CA-hosted or on-premises root certificate is the last in the chain, and each certificate in the chain signs the one preceding. </p> <p>This parameter must be supplied when you import a subordinate CA. When you import a root CA, there is no chain.</p>"
        }
      }
    },
    "Integer1To5000": {
      "type": "integer",
      "max": 5000,
      "min": 1
    },
    "IssueCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "Csr",
        "SigningAlgorithm",
        "Validity"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "Csr": {
          "shape": "CsrBlob",
          "documentation": "<p>The certificate signing request (CSR) for the certificate you want to issue. You can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key. </p> <p> <code>openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>If you have a configuration file, you can use the following OpenSSL command. The <code>usr_cert</code> block in the configuration file contains your X509 version 3 extensions. </p> <p> <code>openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>Note: A CSR must provide either a <i>subject name</i> or a <i>subject alternative name</i> or the request will be rejected. </p>"
        },
        "SigningAlgorithm": {
          "shape": "SigningAlgorithm",
          "documentation": "<p>The name of the algorithm that will be used to sign the certificate to be issued. </p> <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter used to sign a CSR.</p>"
        },
        "TemplateArn": {
          "shape": "Arn",
          "documentation": "<p>Specifies a custom configuration template to use when issuing a certificate. If this parameter is not provided, ACM Private CA defaults to the <code>EndEntityCertificate/V1</code> template. For CA certificates, you should choose the shortest path length that meets your needs. The path length is indicated by the PathLen<i>N</i> portion of the ARN, where <i>N</i> is the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth\">CA depth</a>.</p> <p>Note: The CA depth configured on a subordinate CA certificate must not exceed the limit set by its parents in the CA hierarchy.</p> <p>The following service-owned <code>TemplateArn</code> values are supported by ACM Private CA: </p> <ul> <li> <p>arn:aws:acm-pca:::template/CodeSigningCertificate/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/CodeSigningCertificate_CSRPassthrough/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/EndEntityCertificate/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/EndEntityCertificate_CSRPassthrough/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/EndEntityClientAuthCertificate/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/EndEntityClientAuthCertificate_CSRPassthrough/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/EndEntityServerAuthCertificate/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/EndEntityServerAuthCertificate_CSRPassthrough/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/OCSPSigningCertificate/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/OCSPSigningCertificate_CSRPassthrough/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/RootCACertificate/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen0/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen1/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen2/V1</p> </li> <li> <p>arn:aws:acm-pca:::template/SubordinateCACertificate_PathLen3/V1</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html\">Using Templates</a>.</p>"
        },
        "Validity": {
          "shape": "Validity",
          "documentation": "<p>Information describing the validity period of the certificate.</p> <p>When issuing a certificate, ACM Private CA sets the \"Not Before\" date in the validity field to date and time minus 60 minutes. This is intended to compensate for time inconsistencies across systems of 60 minutes or less. </p> <p>The validity period configured on a certificate must not exceed the limit set by its parents in the CA hierarchy.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>Custom string that can be used to distinguish between calls to the <b>IssueCertificate</b> action. Idempotency tokens time out after one hour. Therefore, if you call <b>IssueCertificate</b> multiple times with the same idempotency token within 5 minutes, ACM Private CA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, PCA recognizes that you are requesting multiple certificates.</p>"
        }
      }
    },
    "IssueCertificateResponse": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the issued certificate and the certificate serial number. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>"
        }
      }
    },
    "KeyAlgorithm": {
      "type": "string",
      "enum": [
        "RSA_2048",
        "RSA_4096",
        "EC_prime256v1",
        "EC_secp384r1"
      ]
    },
    "ListCertificateAuthoritiesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the <code>NextToken</code> parameter from the response you just received.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>"
        },
        "ResourceOwner": {
          "shape": "ResourceOwner",
          "documentation": "<p>Use this parameter to filter the returned set of certificate authorities based on their owner. The default is SELF.</p>"
        }
      }
    },
    "ListCertificateAuthoritiesResponse": {
      "type": "structure",
      "members": {
        "CertificateAuthorities": {
          "shape": "CertificateAuthorities",
          "documentation": "<p>Summary information about each certificate authority you have created.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the list is truncated, this value is present and should be used for the <code>NextToken</code> parameter in a subsequent pagination request.</p>"
        }
      }
    },
    "ListPermissionsRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must be of the form: <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> You can get a private CA's ARN by running the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When paginating results, use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When paginating results, use this parameter to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>"
        }
      }
    },
    "ListPermissionsResponse": {
      "type": "structure",
      "members": {
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>Summary information about each permission assigned by the specified private CA, including the action enabled, the policy provided, and the time of creation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request. </p>"
        }
      }
    },
    "ListTagsRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>"
        }
      }
    },
    "ListTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with your private CA.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request. </p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 500,
      "min": 1
    },
    "PermanentDeletionTimeInDays": {
      "type": "integer",
      "max": 30,
      "min": 7
    },
    "Permission": {
      "type": "structure",
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Number (ARN) of the private CA from which the permission was issued.</p>"
        },
        "CreatedAt": {
          "shape": "TStamp",
          "documentation": "<p>The time at which the permission was created.</p>"
        },
        "Principal": {
          "shape": "Principal",
          "documentation": "<p>The AWS service or entity that holds the permission. At this time, the only valid principal is <code>acm.amazonaws.com</code>.</p>"
        },
        "SourceAccount": {
          "shape": "AccountId",
          "documentation": "<p>The ID of the account that assigned the permission.</p>"
        },
        "Actions": {
          "shape": "ActionList",
          "documentation": "<p>The private CA actions that can be performed by the designated AWS service.</p>"
        },
        "Policy": {
          "shape": "AWSPolicy",
          "documentation": "<p>The name of the policy that is associated with the permission.</p>"
        }
      },
      "documentation": "<p>Permissions designate which private CA actions can be performed by an AWS service or entity. In order for ACM to automatically renew private certificates, you must give the ACM service principal all available permissions (<code>IssueCertificate</code>, <code>GetCertificate</code>, and <code>ListPermissions</code>). Permissions can be assigned with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html\">CreatePermission</a> action, removed with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html\">DeletePermission</a> action, and listed with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html\">ListPermissions</a> action.</p>"
    },
    "PermissionList": {
      "type": "list",
      "member": {
        "shape": "Permission"
      },
      "min": 0
    },
    "PositiveLong": {
      "type": "long",
      "min": 1
    },
    "Principal": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "^[^*]+$"
    },
    "PutPolicyRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Policy"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Number (ARN) of the private CA to associate with the policy. The ARN of the CA can be found by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action.</p> <p/>"
        },
        "Policy": {
          "shape": "AWSPolicy",
          "documentation": "<p>The path and filename of a JSON-formatted IAM policy to attach to the specified private CA resource. If this policy does not contain all required statements or if it includes any statement that is not allowed, the <code>PutPolicy</code> action returns an <code>InvalidPolicyException</code>. For information about IAM policy and statement structure, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json\">Overview of JSON Policies</a>.</p>"
        }
      }
    },
    "ResourceOwner": {
      "type": "string",
      "enum": [
        "SELF",
        "OTHER_ACCOUNTS"
      ]
    },
    "RestoreCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        }
      }
    },
    "RevocationConfiguration": {
      "type": "structure",
      "members": {
        "CrlConfiguration": {
          "shape": "CrlConfiguration",
          "documentation": "<p>Configuration of the certificate revocation list (CRL), if any, maintained by your private CA.</p>"
        }
      },
      "documentation": "<p>Certificate revocation information used by the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> and <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> actions. Your private certificate authority (CA) can create and maintain a certificate revocation list (CRL). A CRL contains information about certificates revoked by your CA. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html\">RevokeCertificate</a>.</p>"
    },
    "RevocationReason": {
      "type": "string",
      "enum": [
        "UNSPECIFIED",
        "KEY_COMPROMISE",
        "CERTIFICATE_AUTHORITY_COMPROMISE",
        "AFFILIATION_CHANGED",
        "SUPERSEDED",
        "CESSATION_OF_OPERATION",
        "PRIVILEGE_WITHDRAWN",
        "A_A_COMPROMISE"
      ]
    },
    "RevokeCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "CertificateSerial",
        "RevocationReason"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "CertificateSerial": {
          "shape": "String128",
          "documentation": "<p>Serial number of the certificate to be revoked. This must be in hexadecimal format. You can retrieve the serial number by calling <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html\">GetCertificate</a> with the Amazon Resource Name (ARN) of the certificate you want and the ARN of your private CA. The <b>GetCertificate</b> action retrieves the certificate in the PEM format. You can use the following OpenSSL command to list the certificate in text format and copy the hexadecimal serial number. </p> <p> <code>openssl x509 -in <i>file_path</i> -text -noout</code> </p> <p>You can also copy the serial number from the console or use the <a href=\"https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html\">DescribeCertificate</a> action in the <i>AWS Certificate Manager API Reference</i>. </p>"
        },
        "RevocationReason": {
          "shape": "RevocationReason",
          "documentation": "<p>Specifies why you revoked the certificate.</p>"
        }
      }
    },
    "S3BucketName": {
      "type": "string",
      "max": 63,
      "min": 3
    },
    "S3Key": {
      "type": "string",
      "max": 1024
    },
    "SigningAlgorithm": {
      "type": "string",
      "enum": [
        "SHA256WITHECDSA",
        "SHA384WITHECDSA",
        "SHA512WITHECDSA",
        "SHA256WITHRSA",
        "SHA384WITHRSA",
        "SHA512WITHRSA"
      ]
    },
    "String": {
      "type": "string"
    },
    "String128": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "String16": {
      "type": "string",
      "max": 16,
      "min": 0
    },
    "String253": {
      "type": "string",
      "max": 253,
      "min": 0
    },
    "String3": {
      "type": "string",
      "max": 3,
      "min": 0
    },
    "String3To255": {
      "type": "string",
      "max": 255,
      "min": 3
    },
    "String40": {
      "type": "string",
      "max": 40,
      "min": 0
    },
    "String5": {
      "type": "string",
      "max": 5,
      "min": 0
    },
    "String64": {
      "type": "string",
      "max": 64,
      "min": 0
    },
    "TStamp": {
      "type": "timestamp"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>Key (name) of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>Value of the tag.</p>"
        }
      },
      "documentation": "<p>Tags are labels that you can use to identify and organize your private CAs. Each tag consists of a key and an optional value. You can associate up to 50 tags with a private CA. To add one or more tags to a private CA, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html\">TagCertificateAuthority</a> action. To remove a tag, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html\">UntagCertificateAuthority</a> action. </p>"
    },
    "TagCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "Tags"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>List of tags to be associated with the CA.</p>"
        }
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "UntagCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn",
        "Tags"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>List of tags to be removed from the CA.</p>"
        }
      }
    },
    "UpdateCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "CertificateAuthorityArn"
      ],
      "members": {
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "RevocationConfiguration": {
          "shape": "RevocationConfiguration",
          "documentation": "<p>Revocation information for your private CA.</p>"
        },
        "Status": {
          "shape": "CertificateAuthorityStatus",
          "documentation": "<p>Status of your private CA.</p>"
        }
      }
    },
    "Validity": {
      "type": "structure",
      "required": [
        "Value",
        "Type"
      ],
      "members": {
        "Value": {
          "shape": "PositiveLong",
          "documentation": "<p>A long integer interpreted according to the value of <code>Type</code>, below.</p>",
          "box": true
        },
        "Type": {
          "shape": "ValidityPeriodType",
          "documentation": "<p>Determines how <i>ACM Private CA</i> interprets the <code>Value</code> parameter, an integer. Supported validity types include those listed below. Type definitions with values include a sample input value and the resulting output. </p> <p> <code>END_DATE</code>: The specific date and time when the certificate will expire, expressed using UTCTime (YYMMDDHHMMSS) or GeneralizedTime (YYYYMMDDHHMMSS) format. When UTCTime is used, if the year field (YY) is greater than or equal to 50, the year is interpreted as 19YY. If the year field is less than 50, the year is interpreted as 20YY.</p> <ul> <li> <p>Sample input value: 491231235959 (UTCTime format)</p> </li> <li> <p>Output expiration date/time: 12/31/2049 23:59:59</p> </li> </ul> <p> <code>ABSOLUTE</code>: The specific date and time when the certificate will expire, expressed in seconds since the Unix Epoch. </p> <ul> <li> <p>Sample input value: 2524608000</p> </li> <li> <p>Output expiration date/time: 01/01/2050 00:00:00</p> </li> </ul> <p> <code>DAYS</code>, <code>MONTHS</code>, <code>YEARS</code>: The relative time from the moment of issuance until the certificate will expire, expressed in days, months, or years. </p> <p>Example if <code>DAYS</code>, issued on 10/12/2020 at 12:34:54 UTC:</p> <ul> <li> <p>Sample input value: 90</p> </li> <li> <p>Output expiration date: 01/10/2020 12:34:54 UTC</p> </li> </ul>"
        }
      },
      "documentation": "<p>Validity specifies the period of time during which a certificate is valid. Validity can be expressed as an explicit date and time when the certificate expires, or as a span of time after issuance, stated in days, months, or years. For more information, see <a href=\"https://tools.ietf.org/html/rfc5280#section-4.1.2.5\">Validity</a> in RFC 5280.</p> <p>You can issue a certificate by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html\">IssueCertificate</a> action.</p>"
    },
    "ValidityPeriodType": {
      "type": "string",
      "enum": [
        "END_DATE",
        "ABSOLUTE",
        "DAYS",
        "MONTHS",
        "YEARS"
      ]
    }
  },
  "documentation": "<note> <p/> </note> <p>This is the <i>ACM Private CA API Reference</i>. It provides descriptions, syntax, and usage examples for each of the actions and data types involved in creating and managing private certificate authorities (CA) for your organization.</p> <p>The documentation for each action shows the Query API request parameters and the XML response. Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see <a href=\"https://aws.amazon.com/tools/#SDKs\">AWS SDKs</a>.</p> <note> <p>Each ACM Private CA API action has a quota that determines the number of times the action can be called per second. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaLimits.html#PcaLimits-api\">API Rate Quotas in ACM Private CA</a> in the ACM Private CA user guide.</p> </note>"
}
]===]))
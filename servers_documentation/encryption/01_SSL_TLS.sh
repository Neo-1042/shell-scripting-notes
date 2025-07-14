#!/bin/zsh

### SSL/TLS background ###

# SSL = Secure Socket Layer (old)
# TLS = Transport Layer Security (new, people actually refer to this when they say 'SSL')

# TLS version 1.3

# SSL/TLS is the security standard for establishing an encrypted connection between a web server
# and a browser, it's built on top of HTTP. Data in transport is encrypted.

# The server needs to proof that is a trusted source and that it is actually the server that
# the clients want. This is why it needs to have an SSL/TLS server certificate, normally
# issued by a third-party CA (certificate authority).

# Optionally, the client can have a certificate as well. 

# The RSA key-pair has a private key (which must be kept in secret) and a public key
# (which the clients will use to encrypt information going into the server).
# This public key must be signed by the CA = Certificate
===================================================================================================
# An SSL/TLS certicate must have the following 3 parts:

# 1] SUBJECT => The Common Name (CN) of the subject has to be the FQDN 
# 	   (Fully Qualified Domain Name) of the server. This is provided by the requestor of the certificate
# 2] SAN = Subject Alternative Name => must contain the DNS name(s) of the server or service.
# 	   It is possible to add more than one DNS name in a certificate SAN field. This is also
#      provided by the requestor of the certificate
# 3] EXTENDED/ENHANCED KEY USAGE OF THE CERTIFICATE: this extension defines the purpose of the certificate
#      i) For server authentication
#      ii) For client authentication
#	   iii) For server AND client authentication (dual purpose or mutual authentication)

# NOTE: when browsers build a secure connection, they have to use the SAN and have to
# IGNORE the CN (Common Name) in subject. * If a SAN extension of type 'dNSName' is present,
# this MUST be used as the identity.

# In addition, the CA certificate(s) must be installed as TRUSTED CHAIN into both client
# and server side.

# These extensions are set by the CA when it issues the certificate, but the requestor must know
# which type of certificate is needed.

# Example of certificate parameters:
Subject:
	CN=server1.location.domain.subdomain
SAN:
	DNS=server1
	DNS=server1.location.domain.subdomain
Extended/Enhanced Key Usage: # Dual purpose example
	Server Authentication
	Client Authentication
===================================================================================================
# For Windows environments, you may use the "certutil" command-line utility
# For UNIX systems, you may use the "openssl" command-line utility
===================================================================================================
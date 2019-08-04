root@cloudemperor:/var/named]# dig www.ubnt.com

; <<>> DiG 9.9.4-RedHat-9.9.4-74.el7_6.2 <<>> www.ubnt.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 61181
;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 4, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;www.ubnt.com.			IN	A

;; ANSWER SECTION:
www.ubnt.com.		10	IN	CNAME	prd-ubnt-redirect-2018738021.us-west-2.elb.amazonaws.com.
prd-ubnt-redirect-2018738021.us-west-2.elb.amazonaws.com. 48 IN	A 52.26.212.30
prd-ubnt-redirect-2018738021.us-west-2.elb.amazonaws.com. 48 IN	A 52.42.33.1
prd-ubnt-redirect-2018738021.us-west-2.elb.amazonaws.com. 48 IN	A 54.149.239.221

;; AUTHORITY SECTION:
us-west-2.elb.amazonaws.com. 594 IN	NS	ns-1475.awsdns-56.org.
us-west-2.elb.amazonaws.com. 594 IN	NS	ns-1769.awsdns-29.co.uk.
us-west-2.elb.amazonaws.com. 594 IN	NS	ns-332.awsdns-41.com.
us-west-2.elb.amazonaws.com. 594 IN	NS	ns-560.awsdns-06.net.

;; Query time: 16 msec
;; SERVER: 192.168.1.1#53(192.168.1.1)
;; WHEN: Sat Aug 03 17:09:06 EDT 2019
;; MSG SIZE  rcvd: 293

 git help -a | grep credential-


   $ git config credential.helper cache
           $ git push http://example.com/repo.git
           Username: <type your username>
           Password: <type your password>
git config credential.helper 'cache --timeout=300'


    proxy_set_header Host $host;
    proxy_set_header Host $host;
    proxy_set_header Host $host;
    proxy_set_header Host $host;
    proxy_set_header Host $host;

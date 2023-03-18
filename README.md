# HAProxy-Instances-in-an-ELB-Sandwich-Configuration
Deploy a Set of HAProxy Instances in an ELB Sandwich Configuration

About HAProxys https://phoenixnap.com/kb/haproxy-load-balancer

The architecture involves configuring four separate web instances that are spread across two separate regions. Each region will have a pair of instances.

To distribute incoming traffic across the instances, a Network Load Balancer (NLB) will be created for each set of instances. The NLB is a highly scalable AWS service that can handle millions of requests per second. It is designed to route traffic to instances across multiple Availability Zones in a region, providing both high availability and fault tolerance.

Having one NLB per set of instances ensures that each set is independently load balanced and can scale as needed. By spreading the instances across two separate regions, the architecture also provides geographic redundancy, allowing for failover in case of a regional outage.

Overall, this architecture provides a highly available, scalable, and fault-tolerant infrastructure for hosting web applications that can handle traffic from multiple regions.
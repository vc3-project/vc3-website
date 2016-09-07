---
title: About VC3
---

Traditional high performance and high throughput computing facilities largely assume local, centralized configuration and arbitration of resources. While this model has been adequate for serving individuals for some time, it has never been satisfactory for collaborating groups that cross organizational boundaries: a computing facility designed to meet the needs of one user community rarely meets the needs of others. The result is that users retreat to private resources, resulting in excess hardware acquisition, underutilized machines, or both. This is especially unfortunate when the distinction between facilities lies more in operating system and software configuration than fundamental hardware differences. 

### The cluster, re-imagined

In this project, we will aim to make research computing facilities more amenable to self-service use by broad user communities.  The organizing principle is the idea of virtual clusters for community computation (VC3) in which end users can effectively "allocate" clusters from existing facilities by requesting, for example, 200 nodes of 24 cores and 64GB RAM each, with 100TB local scratch and 10Gb connectivity to external data sources. Once allocated, the owner of the virtual cluster is to install software, load data, execute jobs, and share the allocation with collaborators.  Of course, we do not expect to unilaterally change the underlying resource management systems of existing facilities. Rather, virtual clusters will be provisioned on top of existing facilities by deploying user-level tools (e.g. HTCondor-based tools for resource management, data caching, and Parrot for virtual file system access) within the existing batch systems.  In short, a virtual cluster will appear to facility administrators as a large parallel job managed by the end user.  

### Smarter workloads

But virtual clusters by themselves are not enough: workloads must be self-configuring so that they can bring necessary dependencies, discover the dynamic configuration, and adapt to the (possibly) changing conditions of the virtual cluster. To accomplish this integration with reasonable effort, we will leverage a variety of existing open source tools and production quality services.  The end product will be a flexible, optimizable software ecosystem with a generic set of capabilities, presented to users as a virtual cluster service accessible via a web portal.  We presume the cluster as an optimal computing abstraction as it naturally covers a large swath of modern scientific computation and training base of expertise (e.g. campus HPC centers). We use as principal drivers computation in high-energy physics, and in particular data-intensive analysis workflows required for analysis of multi-petabyte scale datasets flowing from the ATLAS and CMS experiments at the Large Hadron Collider (LHC) at CERN in Geneva, Switzerland.  

The deliverables for this project will include: 

* A reference virtual cluster platform service which describes the layered architectural components and the relationships and connections between them;
* A number of production service instances, providing a core computational feature set, to be used to coordinate grid, commercial cloud, HPC center, and importantly, university campus cluster access; 
* A selection of workflow tools and services that are capable of functioning effectively in the dynamically-configured environment of a virtual cluster.  

The effectiveness of these deliverables will be demonstrated at scale with CMS and ATLAS user applications and the adoption of the VC3-implemented virtual clusters by new communities. 



# ISPD24 Contest: GPU/ML-Enhanced Large Scale Global Routing

<img width="1000" alt="profile" src="etc/ispd_logo.png">

### Contest Introduction

Global routing is a critical component of the VLSI design process, exerting a substantial influence on circuit timing, power consumption, and overall routability. The efficiency of global routing is of paramount importance, as a swift and scalable approach can guide optimizations in early design stages like floor-planning and placement.

Over the past decade, GPU accelerated computing platforms have been evolving into highly versatile and programmable systems capable of delivering immense parallel computing power. Recent studies have successfully leveraged GPUs to achieve over a 10x acceleration in global routing without compromising performance. Furthermore, machine learning (ML) techniques have been integrated into the global routing process, leading to enhanced routing solution quality.

The goal of this competition is to stimulate academic research aimed at developing a GPU/ML-enhanced global router tailored for industrial-level circuits. Notably, contemporary VLSI circuits often encompass tens of millions of cells, which is a significant departure from past global routing competitions that typically dealt with scenarios involving no more than 1 million cells. Due to the limitations of current routers, hierarchical or partitioning-based methods are commonly employed to manage large circuits, albeit at the risk of sacrificing a certain degree of optimality.
It is of great importance to develop a scalable global router capable of handling circuits with tens of millions of cells, as it can greatly inform optimizations in the early design stages, such as floor-planning and placement. By fostering enthusiasm and innovation within the global routing research community, this competition aims to deliver substantial reductions in global routing runtime for these expansive industrial-grade circuits, harnessing the computational power of GPUs and the potential of machine learning techniques. Simultaneously, it strives to enhance the overall quality of routing results.

### Input/Output Formats and Evaluation

To enable teams from diverse backgrounds to participate, we have extracted routing resource information and netlist data from LEF and DEF files and organized them in simplified formats. Consequently, participants can approach the contest as a mathematical optimization problem within the GCell grid graph. The desired outcome is global routing solutions described within the GCell grid graph. The evaluation process is centered on several key metrics, including total wirelength, via count and routing congestion of the global routing solution, as well as the execution runtime of the global router.

Please check [Introduction of the contest](https://drive.google.com/file/d/11wSwOaLQ0ZMEq2Znb3gjCAtLhNn1DV1w/view?usp=sharing) for more details. 

### Submission Guidance

We expect teams to package their global routers into Docker images. And we will pull and execute these images on a NVIDIA platform equiped with 4 NVIDIA A100 GPUs. 

### Anouncement
- We've released example global routing solutions on Oct 28, 2023.
- We've released the evaluation scripts on Oct 28, 2023.
- To simplify the entry process for the competition, we've extracted routing resource information and netlist data from LEF and DEF files and stored them in simplified formats. As a result, participants can tackle the contest challenge as a mathematic optimization problem within the GCell grid graph. - Oct 28, 2023.
- Registration opens on Sep 13, 2023!
- Released the first set of benchmarks on Sep 13, 2023
- Released the docker for environment setup on Sep 13, 2023

### Registration

- Please fill in this [online registration form](https://form.jotform.com/232454622032143)
- Registration window: Sep 13, 2023 - Dec 1, 2023

### Important Dates

- Registration Open: Sep 13, 2023
- Registration Close: Dec 1, 2023
- Alpha Submission: Jan 5, 2024
- Beta Submission: Feb, 2, 2024
- Final Submission: Mar, 1, 2024
- Results Anouncement: March 15, 2024

### Downloads
- [Introduction of the contest](https://drive.google.com/file/d/11wSwOaLQ0ZMEq2Znb3gjCAtLhNn1DV1w/view?usp=sharing)
- [First set of benchmarks with Nangate45 technology node](https://drive.google.com/drive/folders/1afrsbeS_KuSeHEVfuQOuLWPuuZqlDVlw?usp=sharing) 
Please note that all the essential input information for global routing is contained within the .cap files and .net files located in the "Simple_inputs" folder. We also release the LEF/DEF files of the circuits just for reference.
- [Evaluation Scripts](https://drive.google.com/drive/folders/1VTnIFtCa6X7cRRx9xBtPDu-kHPdnhCzL?usp=sharing)
- [Example global routing solutions](https://drive.google.com/drive/folders/1901Cn31zsq1bNs8lrHBC_CUwEF0eUk8Z?usp=drive_link)
- [Dockerfile for environment setup](https://github.com/liangrj2014/ISPD24_contest/blob/main/Dockerfile)
  
### Q&A

- Please post your questions in GitHub Issues

### Contact

- Email：ispd2024contest@gmail.com

### Contest Prizes
- 1st place: $1000 + one NVIDIA GPU of similar value
- 2nd place: $500 + one NVIDIA GPU of similar value
- 3rd place: $250 + one NVIDIA GPU of similar value

### Sponsor
 - Sponsored by NVIDIA
   
<img width="600" alt="profile" src="etc/nvidia_logo.png">

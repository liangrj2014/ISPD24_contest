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
- We released the updated version of evaluation script. - Jan 2, 2024.
- The evaluation platform is configured with CUDA version 11.7 and driver version 515.00. We have prepared a Dockerfile (https://github.com/liangrj2014/ISPD24_contest/blob/main/Dockerfile) that will install deep learning toolkits compatible with the CUDA version on our evaluation platform. Generally, participants are welcome to modify the Dockerfile as necessary, ensuring compatibility with our evaluation platform for utilizing the GPUs on the system. - Dec 02, 2023.
- We've identified some bugs in our evaluation script (thanks to the participants for bringing them to our attention!). An updated version will be released shortly, addressing these bugs and significantly improving runtime speed. Stay tuned for the latest updates! - Nov 30, 2023.
- We've released example global routing solutions on Oct 28, 2023.
- We've released the evaluation scripts on Oct 28, 2023.
- To simplify the entry process for the competition, we've extracted routing resource information and netlist data from LEF and DEF files and stored them in simplified formats. As a result, participants can tackle the contest challenge as a mathematic optimization problem within the GCell grid graph. - Oct 28, 2023.
- Registration opens on Sep 13, 2023!
- Released the first set of benchmarks on Sep 13, 2023
- Released the docker for environment setup on Sep 13, 2023

### Registration

- Please fill in this [online registration form](https://form.jotform.com/232454622032143)
- Registration window: Sep 13, 2023 - Dec 1, 2023

- We confirm that we've received the registrations forms from the following teams. Please feel free to send us an email if we overlooked your registration forms or any related information.
  
  |  ID   | Team Name  | Affiliation |
  |  ----  | ----  | ----  |
  | 1  | Mamta | Unknown |
  | 2  | NianNianYouYu | Fudan University |
  | 3  | Binghamton | Binghamton University |
  | 4  | NTHU-TCLAB-GR | National Tsing Hua University |
  | 5  | Alpha-Team | AlphaCHIP LLC; National Research University of Electronic Technology |
  | 6  | HumbleRoute | University of South Florida; CMR Institute of Technology |
  | 7  | automl-for-global-routing | Texas A&M University |
  | 8  | Lira | Unknown |
  | 9  | SCAW | Sun Yat-sen University; Institute of Computing, Chinese Academy of Sciences |
  | 10  | TeamSD | Unknown |
  | 11  | NTUSTGR | National Taiwan University of Science and Technology |
  | 12  | SmartRoute | University of Science and Technology of China |
  | 13  | metaRoute | Fudan University |
  | 14  | IWantNvidia | Unknown |
  | 15  | GRFirExp | University of Science and Technology of China |
  | 16  | DIAG | University of Science and Technology of China |
  | 17  | Santhosh | Unknown |
  | 18  | VCISEDA | Beijing University of Posts and Telecommunications |
  | 19  | Puipui | Nara Institute of Science and Technology |
  | 20  | Team-XJWIN | Xi'an Jiaotong University |
  | 21  | Route 99 | Tsinghua University; University of Science and Technology Beijing |
  | 22  | Team California | University of California , Santa Cruz |
  | 24  | AnxietyAttack | University of Peradeniya |
  | 25  | fzu _team | Unknown |
  | 26  | Jack's team | Unknown |
  | 27  | iEDA-iRT | Institute of Computing Technology; Chinese Academy of Sciences; Shenzhen University; Peng Cheng Laboratory |
  | 28  | GGRouter | Pohang University of Science and Technology |
  | 29  | NTUEE+ | National Taiwan University |
  | 30  | color | Chinese University of Hong Kong |
  | 31  | NNU_FZUTeam | Nanjing Normal University; Fuzhou University |
  | 32  | NYCU_GR | Unknown |
  | 33  | NTUEDA | National Taiwan University |
  | 34  | FZU_MathGR | Fuzhou University |
  | 35  | RL-Route | The Chinese University of Hong Kong |
  | 36  | HustForest | Huazhong University of Science and Technology |
  | 37  | ZJ | Unknown |
  | 38  | Marvin | Indian Institute of Technology Madras |
  | 39  | Tiger | Unknown |
  | 40  | NJUFZUglobalrouter | Nanjing Normal University |
  | 41  | GoToRoute | Fuzhou University |
  | 42  | NYCU-VDA-GR | National Yang Ming Chiao Tung University |
  | 43  | Kate | Scientific research institute for system analysis of Russian Academy of Sciences |
  | 44  | SEU-Router | Southeast University |
  | 45  | Easy_Router | Unknown |
  | 46  | etuoReL | Fudan University |
  | 47  | PY-Router | Unknown |
  | 48  | PampaRouting | Universidade Federal do Rio Grande do Sul |
  | 49  | Team Ondru | Indian Institute of Technology Madras |
  | 50  | XianBaoMing | National Tsing Hua University |
  | 51  | EA | University of Calgary |
  | 52  | CUEDA | The Chinese University of Hong Kong |
  | 53  | Team Hippo | Peking University |
  
### Important Dates

- ~~Registration Open: Sep 13, 2023~~
- ~~Registration Close: Dec 1, 2023~~
- Alpha Submission: ~~Jan 5, 2024~~ Jan 12, 2024
- Beta Submission: Feb, 2, 2024
- Final Submission: Mar, 1, 2024
- Results Anouncement: March 15, 2024

### Downloads
- [Introduction of the contest]([https://drive.google.com/file/d/11wSwOaLQ0ZMEq2Znb3gjCAtLhNn1DV1w/view?usp=sharing](https://drive.google.com/file/d/1YiDORsgiImMg6vIO6EfwFj4VNg8Hb5k3/view?usp=sharing))
- [First set of benchmarks with Nangate45 technology node](https://drive.google.com/drive/folders/1afrsbeS_KuSeHEVfuQOuLWPuuZqlDVlw?usp=sharing) 
Please note that all the essential input information for global routing is contained within the .cap files and .net files located in the "Simple_inputs" folder. We also release the LEF/DEF files of the circuits just for reference.
- [Evaluation Scripts](https://drive.google.com/drive/folders/1VTnIFtCa6X7cRRx9xBtPDu-kHPdnhCzL?usp=sharing)
- [Example global routing solutions](https://drive.google.com/drive/folders/1901Cn31zsq1bNs8lrHBC_CUwEF0eUk8Z?usp=drive_link)
- [Dockerfile for environment setup](https://github.com/liangrj2014/ISPD24_contest/blob/main/Dockerfile) Note that the Dockerfile has been updated on Dec 02, 2023.
  
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

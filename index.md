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

Teams are required to build a Docker image on top of the provided [Dockerfile](https://github.com/liangrj2014/ISPD24_contest/blob/main/Dockerfile). Within the Docker environment, please create a directory named "router" under the "/workspace" folder and place the global router binary/scripts in this directory (/workspace/router). We expect that the global route can accept the following command line:

> ./route -cap $data.cap -net $data.net -output $data.output

During the evaluation process, the Docker images will be pulled and executed on a NVIDIA platform equipped with 4 NVIDIA A100 GPUs. Specifically, we will mount a "benchmarks" folder (containing the input files) to /workspace/benchmarks and an "evaluation" folder (containing the evaluation scripts) to /workspace/evaluation. The [evaluation.sh](https://drive.google.com/file/d/1V_5WSwkD8uk_IJw07m0vjWyCROsK4vfj/view?usp=sharing) script will be executed to run the submitted global router and evaluate the generated solutions.

Please kindly archive your Docker image to a tar file (refer to https://docs.docker.com/engine/reference/commandline/save/). Subsequently, upload the tar archive to Google Drive and share the link with us. Please grant access to the Docker image for anyone with the link. The global router binary/scripts are expected to be stored in /workspace/router within the Docker image. Therefore, there is no need to upload the global router binary/scripts separately. If you have any questions regarding this, please feel free to ask. Thank you!

Evaluation resource limit:
- RAM: 200 GB
- #Cores: 8 cores
  
  |  design | runtime limit/s |
  |  ----  | ----  |
  | Ariane133_51 | 30 |
  | Ariane133_68 | 30 |
  | NVDLA| 30 |
  | BlackParrot | 300	|
  | MemPool-Tile | 30	|
  | MemPool-Group | 500 |
  | MemPool-Cluster | 10000 |
  | TersPool-Cluster | 50000 |
  

### Leaderboard

  - Best scores on pubic benchmarks (alpha submission, updated on Jan 25, 2024)

  |  design | runtime /s | WL cost | via cost| overflow cost | raw score | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |
  | Ariane133_51 | 12	| 9285586|	2956924	| 209162 * 50 | 22700610	| 22599641.13 |
  | Ariane133_68 | 13	| 9435932	| 2883456| 158823 * 50 	| 20260538	| 20176881.88 |
  | BlackParrot | 120	| 58702634	| 20208976	| 728858 * 50 	| 115354510	| 115354510 |
  | MemPool-Tile | 12	| 8484366	| 3501412	| 70477 * 50 	| 15509628	| 15548566.75 |
  | MemPool-Group | 362	| 271521737 |	94674144	| 1778913 * 50 	| 455141531	| 448353488.1 |
  | TersPool-Cluster | 14327| 1103106843	| 285442676	| 5801104 * 50 	| 1678604719	| 1752964443 |

### Anouncement
- We released a testcase with around 50M cells and 60M nets! - Jan 29, 2024
- We evaluated the alpha submissioms on public benchmarks and created the leader board. - Jan 22, 2024
- We updated the submission guidance. -Jan 8, 2024
- We updated the benchmark input files. And a new design ("cluister") with around 10 million cells is released. - Jan 4, 2024
- We postponed the alpha submission date to Jan 12, 2024. - Jan 2, 2024.
- We updated the global routing solution format and evaluation metrics. Please kinldy check the updated [Introduction of the contest](https://drive.google.com/file/d/1YiDORsgiImMg6vIO6EfwFj4VNg8Hb5k3/view?usp=sharing). - Jan 2, 2024.
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
  | 23  | AnxietyAttack | University of Peradeniya |
  | 24  | fzu _team | Unknown |
  | 25  | Jack's team | Unknown |
  | 26  | iEDA-iRT | Institute of Computing Technology; Chinese Academy of Sciences; Shenzhen University; Peng Cheng Laboratory |
  | 27  | GGRouter | Pohang University of Science and Technology |
  | 28  | NTUEE+ | National Taiwan University |
  | 29  | color | Chinese University of Hong Kong |
  | 30  | NNU_FZUTeam | Nanjing Normal University; Fuzhou University |
  | 31  | NYCU_GR | Unknown |
  | 32  | NTUEDA | National Taiwan University |
  | 33  | FZU_MathGR | Fuzhou University |
  | 34  | RL-Route | The Chinese University of Hong Kong |
  | 35  | HustForest | Huazhong University of Science and Technology |
  | 36  | ZJ | Unknown |
  | 37  | Marvin | Indian Institute of Technology Madras |
  | 38  | Tiger | Unknown |
  | 39  | NJUFZUglobalrouter | Nanjing Normal University |
  | 40  | GoToRoute | Fuzhou University |
  | 41  | NYCU-VDA-GR | National Yang Ming Chiao Tung University |
  | 42  | Kate | Scientific research institute for system analysis of Russian Academy of Sciences |
  | 43  | SEU-Router | Southeast University |
  | 44  | Easy_Router | Unknown |
  | 45  | etuoReL | Fudan University |
  | 46  | PY-Router | Unknown |
  | 47  | PampaRouting | Universidade Federal do Rio Grande do Sul |
  | 48  | Team Ondru | Indian Institute of Technology Madras |
  | 49  | XianBaoMing | National Tsing Hua University |
  | 50  | EA | University of Calgary |
  | 51  | CUEDA | The Chinese University of Hong Kong |
  | 52  | Team Hippo | Peking University |
  
### Important Dates

- ~~Registration Open: Sep 13, 2023~~
- ~~Registration Close: Dec 1, 2023~~
- Alpha Submission: ~~Jan 5, 2024~~ Jan 12, 2024
- Beta Submission: Feb, 2, 2024
- Final Submission: Mar, 1, 2024
- Results Anouncement: March 15, 2024

### Downloads
- [Introduction of the contest](https://drive.google.com/file/d/1yEgcjHAZOyFHKlfYhzHe8ZeZuefEK2sP/view?usp=drive_link) Note that the introduction has been updated on Jan 29, 2024.
- [First set of benchmarks with Nangate45 technology node](https://drive.google.com/drive/folders/1afrsbeS_KuSeHEVfuQOuLWPuuZqlDVlw?usp=sharing)
Please note that all the essential input information for global routing is contained within the .cap files and .net files located in the "Simple_inputs" folder. We also release the LEF/DEF files of the circuits just for reference. Note that the benchmarks have been updated on Jan 29, 2024.
- [Evaluation Scripts](https://drive.google.com/drive/folders/1VTnIFtCa6X7cRRx9xBtPDu-kHPdnhCzL?usp=sharing) Note that the evaluation scripts have been updated on Jan 29, 2024.
- [Example global routing solutions](https://drive.google.com/drive/folders/1901Cn31zsq1bNs8lrHBC_CUwEF0eUk8Z?usp=drive_link) Note that the example solutions have been updated on Jan 03, 2024.
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

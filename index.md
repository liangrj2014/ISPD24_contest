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

Routing resource limit:
- RAM: 200 GB
- CPU Cores: 8 cores
- GPUs: 4 NVIDIA A100 GPUs
  
  |  design | runtime limit/s |
  |  ----  | ----  |
  | Ariane133_51 | 30 |
  | Ariane133_68 | 30 |
  | NVDLA| 30 |
  | BlackParrot | 300	|
  | MemPool-Tile | 30	|
  | MemPool-Group | 1000 |
  | MemPool-Cluster | 10000 |
  | TeraPool-Cluster | 50000 |
  

### Leaderboard

  - Best scores on pubic benchmarks (alpha submission, updated on Jan 25, 2024)

  |  design | runtime /s | WL cost | via cost| overflow cost | raw score | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |
  | Ariane133_51 | 12	| 9285586|	2956924	| 209162 * 50 | 22700610	| 22599641.13 |
  | Ariane133_68 | 13	| 9435932	| 2883456| 158823 * 50 	| 20260538	| 20176881.88 |
  | BlackParrot | 120	| 58702634	| 20208976	| 728858 * 50 	| 115354510	| 115354510 |
  | MemPool-Tile | 12	| 8484366	| 3501412	| 70477 * 50 	| 15509628	| 15548566.75 |
  | MemPool-Group | 362	| 271521737 |	94674144	| 1778913 * 50 	| 455141531	| 448353488.1 |
  | MemPool-Cluster | 14327| 1103106843	| 285442676	| 5801104 * 50 	| 1678604719	| 1752964443 |


  - Best scores on pubic benchmarks (beta submission, updated on Feb 15, 2024)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane133_51 | 9335109 |	3060400 |	10369862 | 22765372 | 4 | 11 | 22100882 |
  | Ariane133_68 | 9443754 | 2981836 | 7825647 | 20251238 | 8 | 12 | 20014313 |
  | BlackParrot | 58347098 | 19740536 | 35450029 | 113537664 | 27	| 70.5 | 110393434 |
  | Nvdla | 21345766 |	4630872	| 23933347 | 49909986 | 4	| 20 | 47592238 |
  | MemPool-Tile | 8407884 | 3425828 | 3569040 | 15402753 |	3	| 10 | 14867672 |
  | MemPool-Group | 262817992 |	76146200 | 70345580 |	409309772 |	81 |	375	|	391210938 |
  | MemPool-Cluster | 1094650057 | 268335040 | 300359611 | 1663344708	| 478	| 2048 |	1593513066 |
  | Tera-Cluster | 12190406272 | 1542639724	| 6705414754 | 20438460750 | 4310	| 4584 | 20402113329 |

 - Best scores on pubic benchmarks (final submission, pending)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane133_51 |  |	 |	 |  | |  |  |
  | Ariane133_68 |  |	 |	 |  | |  |  |
  | BlackParrot |  |  |  |  | 	|  |  |
  | Nvdla |  |		|  |  | 	|  |  |
  | MemPool-Tile |  | |  |  |		|  |  |
  | MemPool-Group |  |  |  |	 | |	|	 |
  | MemPool-Cluster |  |  |  | 	| 	|  |	 |
  | Tera-Cluster |  | 	|  |  |  |  |  |

  - Scores of #1 team (Main track) on hidden benchmarks (final submission, updated on March 19, 2024)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane_rank | 11931752.82 |	2906688 |	7764435.24 | 22602876.06 | 6.238 | 9.535 | 22326149.32 |
  | BlackParrot_rank | 55573070.65 | 19738252 | 37798297.79 | 113109620.4 | 16.551	| 34.3625 | 110725458.3 |
  | Nvdla_rank | 21472300.92 |	4661336	| 17062342.24 | 43195979.16 | 7.504	| 10.432 | 42785371.97 |
  | MemPool-Tile_rank | 7541038.845 | 3346788 | 2939315.209 | 13827142.05 |	5.093	| 5.3315 | 13808883.1 |
  | MemPool-Group_rank | 247299729.1 | 73566828 | 62771095.09 |	383637652.2 |	45.455 |	144.5285	|	370833031.1 |
  | MemPool-Cluster_rank | 1185865082 | 282548572 | 313778179.9 | 1782191834	| 217.099	| 765.475 |	1717391261 |
  | Tera-Cluster_rank | 7963801630 | 1690296724	| 2867829285 | 12521927639 | 1940.183 | 7716.82 | 12023100694 |

   - Scores of #2 team (Main track) on hidden benchmarks (final submission)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane_rank | 12051686.81 |	2959392 |	8082422.507 | 23093501.32 | 2.234 | 9.535 | 22126528.5 |
  | BlackParrot_rank | 55847570.15 | 19505444 | 35633766.41 | 110986780.6 | 9.573	| 34.3625 | 106894049.8 |
  | Nvdla_rank | 21840287.42 | 4586500	| 17714764.37 | 44141551.79 | 3.295	| 10.432 | 42673699.17 |
  | MemPool-Tile_rank | 7601380.712 | 3308184 | 3223704.168 | 14133268.88 |	2.085	| 5.3315 | 13750400.29 |
  | MemPool-Group_rank | 250445949.5 | 74362960 | 70679949.95 |	395488859.5 | 27.603 |	144.5285	|	376596696.5 |
  | MemPool-Cluster_rank | 1190412465 | 274145704 | 359968884.8 | 1824527054	| 124.417	| 765.475 |	1728879082 |
  | Tera-Cluster_rank | 8039402094 | 1488566820	| 3148098101 | 12676067016 | 1352.127 | 7716.82 | 12039024729 |

   - Scores of #3 team (Main track) on hidden benchmarks (final submission)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane_rank | 12021241.28 |	2813744 |	7986303.865 | 22821289.14 | 1.443 | 9.535 | 21577911.53 |
  | BlackParrot_rank | 55751772.56 | 19182208 | 36844605.46 | 111778586 | 8.689	| 34.3625 | 107344166.4 |
  | Nvdla_rank | 21693203.41 |	4455428 | 17146460.17 | 43295091.59 | 4.102	| 10.432 | 42129054 |
  | MemPool-Tile_rank | 7578562.281 | 3233024 | 3055538.132 | 13867124.41 |	1.057	| 5.3315 | 13219650.04 |
  | MemPool-Group_rank | 249498393.4 | 70274012 | 68427932.19 |	388200337.6 | 22.408 |	144.5285	|	367320841 |
  | MemPool-Cluster_rank | 1189656494 | 270441852 | 335426594.9 | 1795524941	| 275.123	| 765.475 |	1742511044 |
  | Tera-Cluster_rank | 7970278976 | 1442567228	| 3184651822 | 12597498026 | 1862.479 | 7716.82 | 12080803508 |

   - Scores of #1 team (Special Honor track) on hidden benchmarks (final submission, pending)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane_rank | 12051686.81 | 2959392 |	8082422.507 | 23093501.32 | 2.234 | 7.535 | 21068226.28 |
  | BlackParrot_rank | 55847570.15 | 19505444 | 35633766.41 | 110986780.6 | 9.573	| 34.3625 | 100754953.7 |
  | Nvdla_rank | 21840287.42 |	4586500	| 17714764.37 | 44141551.79 | 3.295	| 10.216 | 40538541.63 |
  | MemPool-Tile_rank | 7601380.712 | 3308184 | 3223704.168 | 14133268.88 |	2.085	| 5.015 | 13238489.99 |
  | MemPool-Group_rank | 250445949.5 | 74362960 | 70679949.95 |	395488859.5 | 27.603 | 121.879	|	353121075.5 |
  | MemPool-Cluster_rank | 1190412465 | 274145704 | 359968884.8 | 1824527054	| 124.417	| 712.241 |	1594893733 |
  | Tera-Cluster_rank | 8039402094 | 1488566820	| 3148098101 | 12676067016 | 1352.127 | 5331.15 | 11421633213 |

   - Scores of #2 team (Special Honor track) on hidden benchmarks (final submission, pending)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane_rank |  |	 |	 |  | |  |  |
  | BlackParrot_rank |  |  |  |  | 	|  |  |
  | Nvdla_rank |  |		|  |  | 	|  |  |
  | MemPool-Tile_rank |  | |  |  |		|  |  |
  | MemPool-Group_rank |  |  |  |	 | |	|	 |
  | MemPool-Cluster_rank |  |  |  | 	| 	|  |	 |
  | Tera-Cluster_rank |  | 	|  |  |  |  |  |

   - Scores of #3 team (Special Honor track) on hidden benchmarks (final submission, pending)

  |  design | WL cost | via cost| overflow cost | raw score | runtime /s | median runtime /s | scaled score |
  |  ----  | ----  | ----  | ----  | ----  | ----  | ----  |----  |
  | Ariane_rank |  |	 |	 |  | |  |  |
  | BlackParrot_rank |  |  |  |  | 	|  |  |
  | Nvdla_rank |  |		|  |  | 	|  |  |
  | MemPool-Tile_rank |  | |  |  |		|  |  |
  | MemPool-Group_rank |  |  |  |	 | |	|	 |
  | MemPool-Cluster_rank |  |  |  | 	| 	|  |	 |
  | Tera-Cluster_rank |  | 	|  |  |  |  |  |


### Anouncement
- We released the hidden benchmarks - March 26, 2024
- We released the slides for the contest results/summary - March 19, 2024
- We released the routing resource limit - Feb 2, 2024
- We released a testcase with around 50M cells and 60M nets! - Jan 29, 2024
- We evaluated the alpha submissioms on public benchmarks and created the leader board. - Jan 22, 2024
- We updated the submission guidance. -Jan 8, 2024
- We updated the benchmark input files. And a new design ("cluster") with around 10 million cells is released. - Jan 4, 2024
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
- [Final contest result](https://github.com/liangrj2014/ISPD24_contest/blob/main/16_1_contest_slides_final.pptx) - March 19, 2024.
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

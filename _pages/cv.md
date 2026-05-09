---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* Ph.D. in Electrical Engineering, Stanford University, 2022-Present
  * Neural Interaction Lab
* M.S. in Electrical Engineering, Stanford University, 2022-2024
  * Depth: Circuits
* B.S. in Computation & Cognition, Massachusetts Institute of Technology, 2018-2022
  * GPA: 4.80
  * Minor: Mechanical Engineering
  * Teaching Assistant: Multivariable Calculus
  * Relevant coursework: Interconnected Embedded Systems, Machine Learning, Circuits & Electronics, Microelectronic Devices, Mechanics & Materials, Developmental Neurobiology, Genetic Engineering, Micro-Nano Processing Technology

Publications
======
{% if site.author.googlescholar %}
  <div class="wordwrap">You can also find my articles on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %}

<ul style="list-style-type: none; padding-left: 0;">
{% for post in site.publications reversed %}
  {% include archive-single-cv.html %}
{% endfor %}
</ul>

Research Experience
======
* **Ph.D. Researcher**, Neural Interaction Lab, Stanford University (2022-Present)
  * Investigating neural and physiological mechanisms of olfactory perception, studying interactions between respiration, brain activity, and sensory processing
  * Developing signal processing algorithms to analyze multimodal physiological recordings including EEG and electrogastrograms (EGG)
  * Designing and fabricating flexible bioelectronic sensing devices

* **Super UROP Scholar**, Microsystems Technology Laboratories, MIT (2020-2022)
  * Fabricated graphene sensors in MIT.nano for electronic nose applications
  * Simulated GaN photonic and electronic devices using Silvaco
  * Characterized FETs and diodes and compared measurements with device simulations

* **Undergraduate Researcher**, Bioelectronics Lab, MIT (2021-2022)
  * Developed neural probes designed to promote innervation and reduce tissue scarring
  * Learned electronic and optical microfabrication processes

* **Visiting Scientist**, Laboratory of Bioelectronics & Biosensors, ETH Zurich (2021)
  * Bachelor's Thesis
  * Investigated plasticity in engineered biological neural networks on CMOS arrays
  * Conducted cell culture and electrophysiology experiments

* **Undergraduate Researcher**, Langer & Traverso Lab, MIT (2020)
  * Studied RNA expression changes caused by ingestible electronic devices in GI tissue

Industry Experience
======
* **Hardware Engineering Intern**, NextSense Inc., Mountain View, CA (2024)
  * Modified chemical processes to reduce impedance and improve electrode contact for in-ear EEG sensors
  * Contributed to next-generation sensor and device hardware development

* **Antenna Products & RF Design Intern**, Northrop Grumman Aerospace Systems, Redondo Beach, CA (2017-2022)
  * Developed algorithms using VGG-19, ResNet50, and Inception-ResNetV2 for extraterrestrial life detection
  * Automated analog circuit design workflows using Linux, Anaconda, and Cadence
  * Designed 5G CMOS low-noise amplifier and performed RF simulations
  * Designed antennas using Antenna Magus, MATLAB, and CST Microwave Studio
  * Built and deployed a high-altitude celestial navigation device
  * Developed N-path filters for anti-jamming applications

Awards & Fellowships
======
* Stanford Bio-X Food Fellowship (2025-2026)
* National Science Foundation Graduate Research Fellowship (2022-2025)
* Stanford Neurotech Training Program Fellow (2023-2025)
* Intel International Science & Engineering Fair – 3rd Place, Embedded Systems (2017)
* California State Science Fair – 1st Place (2014, 2017), 2nd Place (2018)
* MIT Machine Learning Hackathon – 3rd Place (2020)

Technical Skills
======
* **Software**
  * Cadence
  * CST Microwave Studio
  * Antenna Magus
  * Simulink
  * Silvaco
  * LTSpice
* **Hardware**
  * Network analyzers
  * Signal generators
  * Antenna range testing
  * DC probe stations
* **Microfabrication**
  * E-beam deposition
  * ALD
  * Spin coating
  * Chemical etching
  * Maskless aligner
* **Programming**
  * Python
  * C
  * MATLAB
  * Linux
* **Languages**
  * English (Advanced)
  * Japanese (Advanced)
  * Chinese (Basic)

Service and Leadership
======
* President, Graduate Society of Women Engineers (2025-Present)
* Stanford Graduate Community Engaged Teaching Fellowship (2025-Present)
* Stanford Pathways to Neuroscience Fellow (2025-Present)
* Mentorship Chair, Women in Electrical Engineering (2024-Present)
* Stanford Graduate Community Associate (2023-Present)
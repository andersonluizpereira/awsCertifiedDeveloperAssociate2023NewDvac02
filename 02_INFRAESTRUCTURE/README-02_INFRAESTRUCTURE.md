# README-02_INFRAESTRUCTURE

Cloud Computing, or cloud computing, refers to the delivery of computing services, such as storage, processing, networking, analytics, software and intelligence, over the Internet ("cloud") to provide faster, more flexible and scalable resources. AWS (Amazon Web Services) is a leading cloud service provider, offering a wide range of services that enable organizations and individuals to run applications and store data in the cloud.

Here are some of the main concepts related to the definition of Cloud Computing on AWS:

1. **On-Demand Resources:** Users can obtain compute and storage resources as needed, paying only for what they use. This eliminates the need for upfront investment in infrastructure.

2. **Internet Access:** Services are accessed via the Internet, providing flexibility in accessing resources from anywhere in the world.

3. **Elasticity and Scalability:** Users can scale resources up or down depending on demand. This allows you to handle traffic spikes or reduce costs during slower periods.

4. **Managed Services:** AWS offers managed services, which means that many of the administrative tasks, such as hardware maintenance and software updates, are handled by AWS, allowing users to focus on their applications and data.

5. **Shared Responsibility Model:** AWS follows the shared responsibility model, where it manages the security of the cloud (infrastructure, data centers, etc.), while customers are responsible for the security of their data in the cloud ( user accounts, access settings, etc.).

6. **Diverse Services:** AWS offers a variety of services, including compute (EC2), storage (S3), databases (RDS), data analysis (Redshift), machine learning (SageMaker), among others.

7. **Flexibility and Agility:** Cloud Computing allows users to quickly experiment with new ideas and implement solutions in a more agile way compared to traditional infrastructures.

8. **Pay Per Use:** Customers pay for the resources they consume, which provides significant cost savings compared to purchasing their own infrastructure.

In short, Cloud Computing on AWS offers a more efficient, flexible, and cost-effective approach to delivering IT resources, enabling organizations of all sizes to innovate and grow more effectively.

## Code & Slides Download
Please follow the instructions at https://courses.datacumulus.com/downloads/certified-developer-k92 to download the code and slides.

Happy learning!

Having problems downloading?

Try using a different network, such as your home or phone network, it's possible your company's firewall would be blocking the download.

Try using a VPN service such as TunnelBear (https://www.tunnelbear.com/, it's free!) to VPN into another country where you should be able to download the course content

### AWS Global Infrastructure
A AWS Global Infrastructure refere-se à extensa rede de data centers e recursos de computação distribuídos globalmente pela Amazon Web Services (AWS). Esse conjunto de instalações e serviços visa fornecer alta disponibilidade, desempenho otimizado e confiabilidade para os clientes da AWS em todo o mundo.

Principais características da AWS Global Infrastructure:

1. **Regiões:** As regiões da AWS são locais geográficos em que a AWS implantou data centers. Cada região é completamente independente das outras, com suas próprias instalações físicas e energia. Exemplos de regiões incluem a Região Leste dos EUA (Norte da Virgínia), a Região da Ásia-Pacífico (Tóquio) e a Região da Europa (Londres).

2. **Zonas de Disponibilidade:** Dentro de cada região, existem várias Zonas de Disponibilidade (AZs). Cada AZ é um ou mais data centers com infraestrutura totalmente independente, mas interconectada. Isso permite que os usuários distribuam aplicativos e dados em locais fisicamente separados para aumentar a resiliência.

3. **Edge Locations:** Além das regiões e das Zonas de Disponibilidade, a AWS possui Edge Locations que são pontos de presença em locais estratégicos em todo o mundo. Esses pontos de presença são usados para entrega de conteúdo (por meio do Amazon CloudFront) e serviços de computação mais próximos aos usuários finais para reduzir a latência.

4. **Global Accelerator:** A AWS Global Accelerator é um serviço que usa a rede global da AWS para otimizar o roteamento do tráfego dos usuários finais para aplicativos na AWS, proporcionando maior disponibilidade e desempenho.

5. **Controle de Dados Residencial:** A AWS permite que os clientes escolham a região onde seus dados serão armazenados. Isso pode ser importante para atender a requisitos de conformidade e regulamentação específicos.

A arquitetura da AWS Global Infrastructure é projetada para oferecer redundância, escalabilidade e desempenho, permitindo que as organizações construam e executem aplicativos de forma confiável em uma escala global. Essa abordagem proporciona flexibilidade para os usuários implantarem recursos em locais específicos, melhorando a eficiência e a experiência do usuário final.

* AWS Regions
    As regiões na Amazon Web Services (AWS) são áreas geográficas geograficamente isoladas, compostas por data centers, onde a AWS implanta seus serviços de nuvem. Cada região é projetada para ser independente e isolada de outras regiões, proporcionando alta disponibilidade e resiliência. As regiões da AWS são fundamentais para estratégias de arquitetura e recuperação de desastres, permitindo que os usuários distribuam aplicativos e dados em localizações geográficas distintas para aumentar a redundância e a confiabilidade.

Aqui estão algumas características essenciais das regiões da AWS:

1. **Independência Geográfica:** Cada região da AWS é uma entidade geográfica independente, com sua própria infraestrutura física e elétrica. Isso ajuda a garantir que eventos locais, como falhas de energia ou desastres naturais, não afetem outras regiões.

2. **Zonas de Disponibilidade (AZs):** Cada região é composta por várias Zonas de Disponibilidade, que são data centers fisicamente separados dentro da mesma região. AZs são conectadas por meio de redes de alta velocidade e oferecem isolamento físico, permitindo que aplicativos sejam distribuídos entre essas zonas para aumentar a resiliência.

3. **Oferta de Serviços:** Nem todos os serviços da AWS estão disponíveis em todas as regiões. À medida que a AWS expande sua infraestrutura global, novos serviços podem ser lançados em regiões específicas antes de serem disponibilizados globalmente.

4. **Escolha de Região:** Os usuários da AWS podem escolher a região na qual desejam implantar recursos, levando em consideração requisitos de latência, regulamentações de dados e outros fatores de negócios.

5. **Preços Regionais:** Os preços dos serviços da AWS podem variar entre as regiões devido a fatores como custos locais de eletricidade e operação. Os usuários devem considerar os preços regionais ao planejar suas implantações.

Exemplos de regiões da AWS incluem "US East (Norte da Virgínia)", "EU (Irlanda)", "Ásia-Pacífico (Tóquio)", entre outros. Cada região é identificada por um nome único e é composta por uma ou mais Zonas de Disponibilidade. A escolha cuidadosa da região pode ter impacto significativo no desempenho, na conformidade e nos custos das implantações na nuvem.
* AWS Avalability Zones
    As Zonas de Disponibilidade (Availability Zones - AZs) são unidades de data center isoladas e fisicamente separadas dentro de uma região da Amazon Web Services (AWS). Cada Zona de Disponibilidade é projetada para ser independente das outras em termos de energia, refrigeração e rede, proporcionando alta disponibilidade e resiliência para as aplicações e serviços implantados na nuvem.

A presença de Zonas de Disponibilidade em uma região é uma das características distintivas da arquitetura da AWS e é fundamental para estratégias de alta disponibilidade e recuperação de desastres. Aqui estão alguns pontos-chave sobre as Zonas de Disponibilidade:

1. **Fisicamente Separadas:** Cada Zona de Disponibilidade está localizada em um local físico distinto dentro da mesma região geográfica. Isso garante isolamento em caso de falhas locais, como falta de energia, desastres naturais ou outros eventos que possam afetar um local específico.

2. **Conectividade de Alta Velocidade:** Apesar de serem fisicamente separadas, as Zonas de Disponibilidade em uma região são conectadas por redes de alta velocidade, permitindo a comunicação eficiente entre elas. Isso facilita a criação de arquiteturas distribuídas e resilientes.

3. **Alta Disponibilidade:** Distribuir aplicativos ou serviços em várias Zonas de Disponibilidade é uma prática comum para garantir alta disponibilidade. Se uma Zona de Disponibilidade ficar inoperante, as outras continuam funcionando, mantendo os aplicativos acessíveis e reduzindo o impacto de possíveis interrupções.

4. **Redundância:** A arquitetura em Zonas de Disponibilidade permite a implementação de sistemas redundantes, onde os mesmos recursos são replicados em diferentes Zonas de Disponibilidade para garantir a continuidade do serviço em caso de falha em uma Zona específica.

5. **Disponibilidade Global:** As Zonas de Disponibilidade estão presentes em várias regiões da AWS em todo o mundo, oferecendo aos usuários a capacidade de distribuir aplicativos globalmente para otimizar o desempenho e atender a requisitos específicos de conformidade e latência.

Ao projetar arquiteturas na AWS, os usuários podem selecionar em quais Zonas de Disponibilidade implantar seus recursos, garantindo assim uma infraestrutura resiliente e altamente disponível para suas aplicações críticas.
* AWS Data Centers
    A Amazon Web Services (AWS) opera uma extensa rede de data centers globalmente, que são centrais para a prestação de serviços em nuvem. Os data centers da AWS são instalações físicas projetadas para armazenar e gerenciar servidores, armazenamento, redes e outros componentes necessários para suportar os serviços de computação em nuvem oferecidos pela AWS. Aqui estão algumas características e pontos importantes sobre os data centers da AWS:

1. **Localização Geográfica:** Os data centers da AWS estão distribuídos em regiões geográficas ao redor do mundo. Cada região consiste em várias Zonas de Disponibilidade, e cada Zona de Disponibilidade contém um ou mais data centers físicos.

2. **Independência e Redundância:** Os data centers são projetados para serem independentes e redundantes, reduzindo a probabilidade de falhas. Isso significa que, se um data center enfrentar problemas, os serviços podem ser redirecionados para outros data centers sem interrupções significativas.

3. **Segurança Física:** A AWS implementa medidas rigorosas de segurança física para proteger seus data centers. Isso inclui controles de acesso restrito, sistemas de vigilância, detecção de intrusão e outras medidas para garantir a integridade dos equipamentos e a confidencialidade dos dados.

4. **Eficiência Energética:** Os data centers da AWS são projetados com foco na eficiência energética para minimizar o consumo de energia e os impactos ambientais. Isso inclui a utilização de tecnologias de resfriamento avançadas e a busca contínua por práticas sustentáveis.

5. **Conectividade de Alta Velocidade:** Os data centers são interconectados por meio de redes de alta velocidade para permitir a comunicação eficiente entre eles. Isso é crucial para garantir a rápida transferência de dados entre os componentes da infraestrutura distribuída.

6. **Escalabilidade:** Os data centers são dimensionados para acomodar a crescente demanda por recursos de computação em nuvem. Isso permite à AWS expandir sua infraestrutura para atender aos requisitos dos usuários, garantindo ao mesmo tempo desempenho consistente.

7. **Conformidade e Certificações:** A AWS trabalha para obter certificações de conformidade com diversos padrões e regulamentações do setor para garantir que seus data centers atendam a requisitos de segurança e privacidade.

8. **Modelo de Responsabilidade Compartilhada:** A AWS segue o modelo de responsabilidade compartilhada, no qual a segurança da infraestrutura do data center (hardware, redes, sistemas operacionais) é gerenciada pela AWS, enquanto os clientes são responsáveis pela segurança de seus dados e aplicações na nuvem.

Os data centers da AWS desempenham um papel crucial na entrega confiável e segura dos serviços em nuvem, formando a base da infraestrutura global que suporta uma variedade de aplicativos e cargas de trabalho.
* AWS Edge Locations / Points of Presence
    As AWS Edge Locations são pontos de presença (PoPs) distribuídos globalmente pela Amazon Web Services (AWS) para oferecer serviços de computação em nuvem de maneira mais eficiente e com menor latência para os usuários finais. Esses pontos de presença compõem a rede de entrega de conteúdo (CDN) da AWS e são projetados para acelerar a entrega de dados, vídeos, aplicativos e outros conteúdos para usuários finais em todo o mundo.

Principais características das AWS Edge Locations:

1. **Distribuição Global:** As Edge Locations são estrategicamente distribuídas em várias localidades em todo o mundo, incluindo áreas urbanas e regiões mais afastadas. Isso permite que a AWS ofereça serviços mais próximos dos usuários finais, reduzindo a latência e melhorando a experiência do usuário.

2. **Amazon CloudFront:** As Edge Locations são parte integrante do serviço Amazon CloudFront, que é uma CDN global da AWS. O CloudFront permite que os usuários distribuam conteúdo de maneira eficiente, replicando-o em Edge Locations para fornecer acesso rápido e confiável.

3. **Cache e Distribuição de Conteúdo Estático:** As Edge Locations mantêm caches de conteúdo estático, como imagens, vídeos e scripts, reduzindo a carga nos servidores de origem e melhorando a velocidade de entrega para os usuários.

4. **Latência Reduzida:** Ao posicionar o conteúdo mais próximo dos usuários finais, as Edge Locations ajudam a reduzir a latência, melhorando significativamente o desempenho de aplicativos e serviços distribuídos globalmente.

5. **Redundância e Disponibilidade:** A AWS implementa redundância nas Edge Locations para garantir alta disponibilidade e continuidade do serviço. Se uma Edge Location enfrentar problemas, o tráfego pode ser redirecionado para outras Edge Locations próximas.

6. **Aplicações de IoT e APIs:** As Edge Locations também são utilizadas para fornecer serviços de computação de borda para aplicativos de Internet das Coisas (IoT) e APIs, possibilitando o processamento mais próximo dos dispositivos e usuários.

7. **Integração com Outros Serviços:** As Edge Locations se integram a outros serviços da AWS, permitindo que os usuários aproveitem funcionalidades como segurança, monitoramento e escalabilidade.

Ao utilizar as AWS Edge Locations por meio do Amazon CloudFront, os usuários podem melhorar a escalabilidade, a confiabilidade e o desempenho de suas aplicações, independentemente da localização geográfica dos usuários finais.

* https://infrastructure.aws

# How to choose an AWS Region ?
* Complince -> With Data governance and legal requirements: data never leaves a region without your explicit permission
* Proximity -> To customers: reduce latency
* Avalability Services -> Within a region: new services and new features arent`s available in every region
* Pricing -> Princing varies region to region and is transparent in the service pricing page.





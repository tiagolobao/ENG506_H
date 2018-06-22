<h1> </h1>

<h2>Sistema: Estimativa de parâmetros para uma Reação Enzimática </h2>


As reações enzimáticas são usadas extensivamente para caracterizar reações mediadas biologicamente. O exemplo a seguir é um modelo usado para ajustar essas reações: 

𝜗0 = 𝑘𝑚[𝑆]3 / 𝐾 + [𝑆]3

Onde 𝜗0 é a taxa inicial da reação (M/s), [S] é a concentração de substrato(M) e km e K são parâmetros. Os seguintes dados podem ser ajustados com esse modelo: 

|[S], M  |     𝜗0        |
|------- | --------------|
|0.01    | 6.078 x 10-11 |
|0.05    | 7.595 x 10-9  |
|0.1     |  6.063 x 10-8 |
|0.5     |  5.788 x 10-6 |
|1       |  1.737 x 10-5 |
|5       |  2.423 x 10-5 |
|10      |  2.430 x 10-5 |
|50      |  2.431 x 10-5 |
|100     |  2.431 x 10-5 | 

 
* Use uma transformação para linearizar o modelo e calcular os parâmetros. Exiba os dados e o ajuste do modelo em um gráfico. Calcule R2. 
* Efetue os mesmos cálculos de (a), mas use a regressão não linear (fminsearch do matlab. Calcule R2. 

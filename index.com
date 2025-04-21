<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solfeo Avanzado para Coro - Módulo 1: Ritmo y Melodía</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; scroll-behavior: smooth; }
        @keyframes fadeIn { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }
        .fade-in-section { opacity: 0; animation: fadeIn 0.8s ease-out forwards; }
        label { display: block; margin-bottom: 0.5rem; font-weight: 500; color: #374151; font-size: 0.875rem; }
        input[type="range"] { width: 100%; cursor: pointer; accent-color: #84cc16; }
        input[type="number"], select { padding: 0.5rem; border: 1px solid #D1D5DB; border-radius: 0.375rem; width: 100%; }
        button, .styled-button-link { background-color: #a3e635; color: #3f6212; padding: 0.5rem 1rem; border-radius: 0.375rem; font-weight: 600; transition: background-color 0.2s; display: inline-block; text-align: center; border: none; }
        button:hover, .styled-button-link:hover { background-color: #84cc16; }
        h1 { color: #111827; font-size: 1.875rem; line-height: 2.25rem; font-weight: 700;}
        h2 { color: #111827; font-size: 1.5rem; line-height: 2rem; font-weight: 700;}
        h3 { color: #365314; font-size: 1.25rem; line-height: 1.75rem; font-weight: 600; border-bottom: 2px solid #a3e635; padding-bottom: 0.35rem; margin-top: 2rem; margin-bottom: 1rem; }
        p, li { color: #374151; line-height: 1.75; margin-bottom: 1rem; }
        strong { color: #1F2937; font-weight: 600; }
        blockquote { border-left: 6px solid #a3e635; padding: 1rem 1.5rem; margin: 2rem 0; font-style: italic; color: #374151; background-color: #ffffff; border-radius: 0 0.5rem 0.5rem 0; box-shadow: 2px 2px 5px rgba(0,0,0,0.05); }
        .section-bg-light { background-color: #f7fee7; }
        .section-bg-white { background-color: #FFFFFF; }
        .instructional-text { font-size: 0.875rem; color: #4B5563; margin-top: 0.5rem; }
        .output-box { margin-top: 1rem; padding: 0.75rem; background-color: #ecfdf5; border: 1px solid #d1fae5; border-radius: 0.375rem; font-size: 0.875rem; color: #065f46; text-align: center; font-weight: 500; min-height: 40px; }
        .slider-label-container { display: flex; justify-content: space-between; font-size: 0.75rem; color: #6b7280; margin-top: 0.25rem; }
        footer ul { list-style: none; padding-left: 0; }
        footer li { margin-bottom: 0.75rem; }
        footer a { color: #4d7c0f; text-decoration: none; }
        footer a:hover { text-decoration: underline; }
        .header-subtitle { font-size: 1.25rem; line-height: 1.75rem; font-weight: 600; margin-top: 0.25rem; }
        .header-attribution { font-size: 0.875rem; line-height: 1.25rem; margin-top: 0.5rem; opacity: 0.9; }
        nav.page-nav a { margin: 0 0.75rem; color: #f0fdf4; font-weight: 500; text-decoration: none; border-bottom: 2px solid transparent; transition: border-color 0.2s; padding-bottom: 2px; }
        nav.page-nav a:hover, nav.page-nav a.active { border-color: #a3e635; color: #ffffff;}
        .interactive-block { margin-top: 1.5rem; margin-bottom: 1.5rem; padding: 1.5rem; border: 1px solid #d9f99d; border-radius: 0.5rem; background-color: #ffffff; box-shadow: inset 0 1px 3px rgba(0,0,0,0.05); }
        .notation-container { background-color: #f7fee7; border: 1px solid #d9f99d; padding: 1rem; border-radius: 0.25rem; min-height: 100px; overflow-x: auto; }
        .notation-svg { display: block; min-width: 300px; }
        .staff-line { stroke: #bfdbfe; stroke-width: 1; }
        .note-head { fill: #1f2937; }
        .note-stem { stroke: #1f2937; stroke-width: 1.5; }
        .measure-line { stroke: #9ca3af; stroke-width: 1; }
        .clef { font-size: 36px; font-family: serif; fill: #1f2937;}
        .time-sig-num { font-size: 16px; font-weight: bold; fill: #1f2937; text-anchor: middle;}
    </style>
</head>
<body class="bg-gray-100 text-gray-800 antialiased">

    <header class="bg-gradient-to-r from-lime-600 to-green-600 text-white shadow-md sticky top-0 z-50">
        <div class="container mx-auto px-6 py-4">
            <h1 class="text-2xl md:text-3xl font-bold">Solfeo Avanzado para Cantantes de Coro</h1>
            <p class="header-subtitle">Módulo 1: Ritmo y Melodía Complejos</p>
            <nav class="page-nav mt-2 text-sm md:text-base">
                <a href="solfeo_mod1.html" class="active">Módulo 1</a> |
                <a href="#">Módulo 2</a> |
                <a href="#">Módulo 3</a> |
                <a href="#">Módulo 4</a>
            </nav>
        </div>
    </header>

    <main class="container mx-auto px-6 py-8">

        <section id="intro" class="mb-12 p-6 rounded-lg shadow-lg section-bg-white dynamic-content">
            <h2 class="text-lime-700 border-b-2 border-lime-200 pb-2 mb-6">1.1 Introducción: La Precisión del Solfeo en el Coro</h2>
            <p>Bienvenido/a al curso de Solfeo Avanzado para Cantantes de Coro. Mientras que las habilidades básicas de solfeo son fundamentales para cualquier músico, el cantante de coro se enfrenta a desafíos únicos que demandan un nivel superior de lectura y comprensión musical. Este curso está diseñado para cantantes de nivel maestría y doctorado que buscan perfeccionar sus habilidades para abordar repertorio coral complejo con confianza y musicalidad.</p>
            <p>La precisión en el solfeo dentro de un ensamble coral no es solo una cuestión de cantar las notas y ritmos correctos; es la base para lograr una afinación impecable, un empaste vocal homogéneo, una articulación conjunta precisa y una interpretación estilística coherente. A diferencia del solista, el corista debe:</p>
            <ul class="list-disc list-inside pl-4 mb-4">
                <li>Seguir las indicaciones gestuales del director mientras lee la partitura.</li>
                <li>Escuchar activamente las otras voces para ajustar la afinación armónica (considerando temperamentos justos vs. temperados).</li>
                <li>Navegar texturas polifónicas complejas, manteniendo la independencia de su línea melódica.</li>
                <li>Adaptarse rápidamente a cambios de métrica, tonalidad y estilo.</li>
                <li>Potencialmente leer en claves menos comunes (Do en 3ª, Do en 4ª) en repertorio antiguo o contemporáneo.</li>
            </ul>
            <p>Este módulo se centrará en los dos pilares fundamentales: el ritmo y la melodía, abordando las complejidades que van más allá del solfeo básico y que son cruciales para el éxito en un coro de alto nivel.</p>
        </section>

        <section id="ritmo" class="mb-12 p-6 rounded-lg shadow-lg section-bg-light dynamic-content">
            <h2 class="text-lime-700 border-b-2 border-lime-200 pb-2 mb-6">1.2 Lectura Rítmica Avanzada</h2>
            <p>La precisión rítmica es la columna vertebral de la música coral. Más allá de las figuras básicas, el repertorio avanzado exige el dominio de estructuras métricas y rítmicas complejas.</p>

            <h3>Compases Complejos y de Amalgama</h3>
            <p>Los compases como 5/4, 7/8, 5/8, 11/8, etc., requieren una subdivisión interna consistente. Los compases de amalgama combinan grupos simples (ej. 5/8 como 2+3 o 3+2; 7/8 como 2+2+3, 3+2+2 o 2+3+2). La clave es identificar y sentir el patrón de acentuación implícito.</p>

            <h3>Polirritmia y Hemiola</h3>
            <p>La polirritmia implica la superposición de dos o más divisiones rítmicas diferentes simultáneamente (ej. 3 contra 2). La hemiola es un tipo específico donde se siente un cambio temporal de métrica, comúnmente 3 tiempos de binaria sintiéndose como 2 tiempos de ternaria (ej. en 6/8 sentir dos grupos de 3 corcheas vs. tres grupos de 2 corcheas). En coro, es vital mantener la propia línea rítmica contra las otras voces.</p>

            <h3>Grupos Irregulares y Subdivisiones Complejas</h3>
            <p>Más allá de los tresillos, encontramos quintillos, septillos, etc., y subdivisiones complejas de la unidad de tiempo. La subdivisión precisa y constante del pulso base es esencial.</p>

            <h3>Síncopa y Cambios de Métrica</h3>
            <p>La síncopa avanzada y los cambios de métrica frecuentes o irregulares desafían la estabilidad del pulso interno. Anticipar visualmente estos cambios y mantener una referencia interna del pulso son habilidades clave.</p>

            <div class="interactive-block">
                <h4 class="text-lg font-semibold mb-3 text-center text-lime-700">Generador/Práctica Rítmica</h4>
                <p class="instructional-text text-center mb-4">Ajusta los parámetros para generar y practicar ritmos complejos.</p>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
                    <div>
                        <label for="rhythm-tempo-slider">Tempo (BPM): <span id="rhythm-tempo-value">90</span></label>
                        <input type="range" id="rhythm-tempo-slider" min="40" max="160" value="90" step="5">
                    </div>
                    <div>
                        <label for="rhythm-meter-select">Compás:</label>
                        <select id="rhythm-meter-select">
                            <option value="4/4" selected>4/4</option>
                            <option value="3/4">3/4</option>
                            <option value="6/8">6/8</option>
                            <option value="5/4">5/4</option>
                            <option value="7/8">7/8</option>
                        </select>
                    </div>
                    <div>
                        <label for="rhythm-complexity-slider">Complejidad:</label>
                        <input type="range" id="rhythm-complexity-slider" min="1" max="5" value="2" step="1">
                        <div class="slider-label-container"><span>Baja</span><span id="rhythm-complexity-value">2</span><span>Alta</span></div>
                    </div>
                </div>
                <div class="notation-container mb-4">
                    <svg id="rhythm-notation-svg" class="notation-svg" height="80"></svg>
                </div>
                <div class="text-center">
                    <button id="generate-rhythm-btn" class="mr-2">Generar Nuevo Ritmo</button>
                    <button id="play-rhythm-btn">Reproducir Ritmo</button>
                </div>
            </div>
        </section>

        <section id="melodia" class="mb-12 p-6 rounded-lg shadow-lg section-bg-white dynamic-content">
            <h2 class="text-lime-700 border-b-2 border-lime-200 pb-2 mb-6">1.3 Lectura Melódica Avanzada</h2>
            <p>La lectura melódica precisa en coro va más allá de reconocer intervalos diatónicos simples. Requiere agilidad mental y auditiva para navegar armonías y líneas complejas.</p>

            <h3>Intervalos Complejos</h3>
            <p>El dominio incluye intervalos aumentados (ej. 4ª Aug), disminuidos (ej. 5ª Dim - tritono), y compuestos (mayores que la octava, ej. 10ªm). El reconocimiento auditivo y la entonación precisa dentro del contexto armónico son cruciales.</p>

            <h3>Cromatismo y Modulación</h3>
            <p>Las líneas melódicas con alto grado de cromatismo o que modulan rápidamente a tonalidades lejanas exigen una sólida comprensión de las relaciones tonales y una lectura interválica ágil.</p>

            <h3>Lectura en Claves Menos Comunes</h3>
            <p>El repertorio coral, especialmente música antigua o ciertas obras contemporáneas, puede requerir leer en Clave de Do en 3ª (Contralto) o Do en 4ª (Tenor). La familiaridad con estas claves expande el repertorio accesible.</p>

            <h3>Modalidad y Atonalidad</h3>
            <p>La lectura modal requiere reconocer y entonar los patrones interválicos característicos de modos como el Dórico, Frigio, Lidio, Mixolidio. La música atonal o con tonalidad extendida a menudo se basa más en la lectura precisa de intervalos específicos que en la relación con un centro tonal claro.</p>

            <div class="interactive-block">
                 <h4 class="text-lg font-semibold mb-3 text-center text-lime-700">Entrenador de Intervalos Complejos</h4>
                 <p class="instructional-text text-center mb-4">Genera intervalos complejos para practicar su reconocimiento visual y auditivo.</p>
                 <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                     <div>
                         <label for="interval-type-select">Tipo de Intervalo:</label>
                         <select id="interval-type-select">
                             <option value="m2">2ª menor</option>
                             <option value="M2">2ª Mayor</option>
                             <option value="m3">3ª menor</option>
                             <option value="M3">3ª Mayor</option>
                             <option value="P4">4ª Justa</option>
                             <option value="A4">4ª Aumentada (Tritono)</option>
                             <option value="d5">5ª Disminuida (Tritono)</option>
                             <option value="P5">5ª Justa</option>
                             <option value="m6">6ª menor</option>
                             <option value="M6">6ª Mayor</option>
                             <option value="m7">7ª menor</option>
                             <option value="M7">7ª Mayor</option>
                             <option value="P8">8ª Justa</option>
                             <option value="m9">9ª menor</option>
                             <option value="M9">9ª Mayor</option>
                             <option value="m10">10ª menor</option>
                             <option value="M10">10ª Mayor</option>
                         </select>
                     </div>
                     <div>
                        <label for="interval-complexity-slider">Complejidad Contextual:</label>
                        <input type="range" id="interval-complexity-slider" min="0" max="100" value="0" step="10">
                        <div class="slider-label-container"><span>Simple</span><span id="interval-complexity-value">0</span><span>Complejo</span></div>
                     </div>
                 </div>
                 <div class="notation-container mb-4">
                     <svg id="interval-notation-svg" class="notation-svg" height="100"></svg>
                 </div>
                 <div class="text-center">
                     <button id="generate-interval-btn" class="mr-2">Generar Intervalo</button>
                     <button id="play-interval-btn" class="mr-2">Reproducir</button>
                     <button id="show-interval-btn">Mostrar Nombre</button>
                 </div>
                 <div id="interval-answer-output" class="output-box mt-4 invisible">Respuesta aparecerá aquí.</div>
            </div>

            <div class="interactive-block">
                 <h4 class="text-lg font-semibold mb-3 text-center text-lime-700">Generador de Fragmentos Melódicos</h4>
                 <p class="instructional-text text-center mb-4">Genera melodías cortas para practicar lectura a primera vista con dificultad ajustable.</p>
                 <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
                     <div>
                         <label for="melody-difficulty-slider">Dificultad Melódica:</label>
                         <input type="range" id="melody-difficulty-slider" min="1" max="5" value="2" step="1">
                         <div class="slider-label-container"><span>Baja</span><span id="melody-difficulty-value">2</span><span>Alta</span></div>
                     </div>
                     <div>
                         <label for="melody-length-slider">Longitud (compases):</label>
                         <input type="range" id="melody-length-slider" min="2" max="8" value="4" step="1">
                         <div class="slider-label-container"><span>2</span><span id="melody-length-value">4</span><span>8</span></div>
                     </div>
                     <div>
                         <label for="melody-mode-select">Tonalidad/Modo:</label>
                         <select id="melody-mode-select">
                             <option value="major" selected>Mayor</option>
                             <option value="minor">Menor (Natural)</option>
                             <option value="dorian">Dórico</option>
                             <option value="mixolydian">Mixolidio</option>
                             <option value="chromatic">Cromático/Atonal</option>
                         </select>
                     </div>
                 </div>
                 <div class="notation-container mb-4">
                     <svg id="melody-notation-svg" class="notation-svg" height="100"></svg>
                 </div>
                 <div class="text-center">
                     <button id="generate-melody-btn" class="mr-2">Generar Melodía</button>
                     <button id="play-melody-btn">Reproducir Melodía</button>
                 </div>
            </div>
        </section>

         <section id="aplicacion" class="mb-12 p-6 rounded-lg shadow-lg section-bg-light dynamic-content">
            <h2 class="text-lime-700 border-b-2 border-lime-200 pb-2 mb-6">1.4 Aplicación Coral</h2>
            <p>La verdadera prueba del solfeo avanzado ocurre en el contexto de la interpretación coral. Los elementos rítmicos y melódicos complejos rara vez aparecen aislados. Una obra de Stravinsky puede combinar cambios métricos constantes con líneas melódicas angulares y cromáticas. Una fuga de Bach exige independencia rítmica y melódica absoluta en una textura polifónica densa. Un motete renacentista puede requerir leer en claves de Do y navegar por armonías modales con afinación justa.</p>
            <p>El objetivo final de este entrenamiento es desarrollar la capacidad de:</p>
            <ul class="list-disc list-inside pl-4 mb-4">
                <li>Decodificar rápidamente la notación compleja.</li>
                <li>Internalizar el ritmo y la melodía antes de emitir sonido.</li>
                <li>Escuchar el contexto armónico y ajustar la afinación instantáneamente.</li>
                <li>Mantener la propia parte con precisión rítmica y melódica dentro de la textura coral.</li>
                <li>Liberar recursos cognitivos de la lectura para enfocarse en la musicalidad, la expresión y la comunicación con el director y el ensamble.</li>
            </ul>
            <p>Los módulos siguientes explorarán la lectura armónica, la afinación y la aplicación práctica a extractos de repertorio coral.</p>
        </section>

        <section class="mt-12 text-center">
             <a href="solfeo_mod2.html" class="styled-button-link">
                 Continuar al Módulo 2 →
             </a>
         </section>

    </main>

     <footer class="mt-16 pt-8 border-t border-gray-300 text-sm text-gray-600">
         <p class="footer-attribution">Curso de Solfeo Avanzado para Cantantes de Coro - Módulo 1</p>
         <p class="footer-attribution">Desarrollado para Nivel Posgrado</p>
     </footer>

    <script>
        let audioCtx;
        function getAudioContext() {
            if (!audioCtx) {
                try {
                    audioCtx = new (window.AudioContext || window.webkitAudioContext)();
                } catch (e) {
                    console.error("Web Audio API is not supported in this browser");
                    alert("Web Audio API is not supported in this browser");
                }
            }
            return audioCtx;
        }

        function playNote(frequency, duration = 0.5, startTime = 0) {
            const ctx = getAudioContext();
            if (!ctx) return;
            const oscillator = ctx.createOscillator();
            const gainNode = ctx.createGain();
            oscillator.type = 'sine';
            oscillator.frequency.setValueAtTime(frequency, ctx.currentTime + startTime);
            gainNode.gain.setValueAtTime(0.3, ctx.currentTime + startTime);
            gainNode.gain.exponentialRampToValueAtTime(0.001, ctx.currentTime + startTime + duration);
            oscillator.connect(gainNode);
            gainNode.connect(ctx.destination);
            oscillator.start(ctx.currentTime + startTime);
            oscillator.stop(ctx.currentTime + startTime + duration);
        }

        function playClick(time) {
             const ctx = getAudioContext();
             if (!ctx) return;
             const oscillator = ctx.createOscillator();
             const gainNode = ctx.createGain();
             oscillator.type = 'square';
             oscillator.frequency.setValueAtTime(880, ctx.currentTime + time);
             gainNode.gain.setValueAtTime(0.2, ctx.currentTime + time);
             gainNode.gain.exponentialRampToValueAtTime(0.001, ctx.currentTime + time + 0.05);
             oscillator.connect(gainNode);
             gainNode.connect(ctx.destination);
             oscillator.start(ctx.currentTime + time);
             oscillator.stop(ctx.currentTime + time + 0.05);
        }

        function midiToFreq(midiNote) {
            return 440 * Math.pow(2, (midiNote - 69) / 12);
        }

        function setupSVG(svgId, height = 100) {
            const svg = d3.select(`#${svgId}`);
            if (svg.empty()) return null;
            svg.selectAll("*").remove();
            svg.attr("height", height);
            const width = svg.node().getBoundingClientRect().width || 300;
            svg.attr("width", width);
            return { svg, width, height };
        }

        function drawStaff(svg, width, height, lines = 5) {
            const staffTop = 20;
            const lineSpacing = 10;
            for (let i = 0; i < lines; i++) {
                svg.append("line")
                   .attr("x1", 10)
                   .attr("y1", staffTop + i * lineSpacing)
                   .attr("x2", width - 10)
                   .attr("y2", staffTop + i * lineSpacing)
                   .attr("class", "staff-line");
            }
            return { staffTop, lineSpacing };
        }

        function drawClef(svg, staffTop, lineSpacing, type = 'G') {
             if (type === 'G') {
                 svg.append("text")
                    .attr("x", 15)
                    .attr("y", staffTop + lineSpacing * 3 + 5)
                    .attr("class", "clef")
                    .text("𝄞");
             } else if (type === 'F') {
                 svg.append("text")
                     .attr("x", 15)
                     .attr("y", staffTop + lineSpacing + 5)
                     .attr("class", "clef")
                     .text("𝄢");
             }
        }

        function drawTimeSignature(svg, staffTop, lineSpacing, topNum, bottomNum) {
            const xPos = 45;
             svg.append("text")
                .attr("x", xPos)
                .attr("y", staffTop + lineSpacing * 1.5)
                .attr("class", "time-sig-num")
                .text(topNum);
             svg.append("text")
                .attr("x", xPos)
                .attr("y", staffTop + lineSpacing * 3.5)
                .attr("class", "time-sig-num")
                .text(bottomNum);
        }

        function drawNote(svg, x, y, durationType = 'q') {
            const noteHeadRadius = 5;
            svg.append("circle")
               .attr("cx", x)
               .attr("cy", y)
               .attr("r", noteHeadRadius)
               .attr("class", "note-head");

            if (durationType !== 'w') {
                 const stemHeight = 30;
                 const stemX = x + noteHeadRadius;
                 svg.append("line")
                    .attr("x1", stemX)
                    .attr("y1", y)
                    .attr("x2", stemX)
                    .attr("y2", y - stemHeight)
                    .attr("class", "note-stem");
            }
        }

        function drawBarLine(svg, x, staffTop, staffHeight) {
             svg.append("line")
                .attr("x1", x).attr("y1", staffTop)
                .attr("x2", x).attr("y2", staffTop + staffHeight)
                .attr("class", "measure-line");
        }

        const rhythmTempoSlider = document.getElementById('rhythm-tempo-slider');
        const rhythmTempoValue = document.getElementById('rhythm-tempo-value');
        const rhythmMeterSelect = document.getElementById('rhythm-meter-select');
        const rhythmComplexitySlider = document.getElementById('rhythm-complexity-slider');
        const rhythmComplexityValue = document.getElementById('rhythm-complexity-value');
        const generateRhythmBtn = document.getElementById('generate-rhythm-btn');
        const playRhythmBtn = document.getElementById('play-rhythm-btn');
        const rhythmNotationSvgId = 'rhythm-notation-svg';
        let currentRhythmPattern = [];
        let currentTempo = 90;

        function generateRhythm() {
            if (!rhythmMeterSelect || !rhythmComplexitySlider) return;
            const meter = rhythmMeterSelect.value;
            const complexity = parseInt(rhythmComplexitySlider.value);
            const [beats, beatType] = meter.split('/').map(Number);
            const numMeasures = 2;
            currentRhythmPattern = [];

            for (let m = 0; m < numMeasures; m++) {
                let measureDuration = beats;
                if (beatType === 8) measureDuration /= 2;

                let currentMeasureTime = 0;
                while (currentMeasureTime < measureDuration - 0.01) {
                     let duration;
                     const rand = Math.random();
                     if (complexity === 1) duration = 1; // Quarter notes
                     else if (complexity === 2) duration = (rand < 0.6) ? 1 : 0.5; // Quarters and eighths
                     else if (complexity === 3) duration = (rand < 0.4) ? 1 : (rand < 0.8 ? 0.5 : 0.25); // Add sixteenths
                     else if (complexity === 4) duration = (rand < 0.3) ? 1 : (rand < 0.6 ? 0.5 : (rand < 0.9 ? 0.25 : 0.75)); // Add dotted eighths
                     else duration = (rand < 0.2) ? 1 : (rand < 0.5 ? 0.5 : (rand < 0.8 ? 0.25 : (rand < 0.9 ? 0.75 : 1/3))); // Add triplets (approx)

                     if (beatType === 8) duration /= 2;

                     if (currentMeasureTime + duration <= measureDuration) {
                         currentRhythmPattern.push(duration);
                         currentMeasureTime += duration;
                     } else {
                         duration = measureDuration - currentMeasureTime;
                          if(duration > 0.1) currentRhythmPattern.push(duration);
                         currentMeasureTime = measureDuration;
                     }
                }
                 currentRhythmPattern.push('|');
            }
            drawRhythmNotation();
        }

        function drawRhythmNotation() {
            const setup = setupSVG(rhythmNotationSvgId, 80);
            if (!setup) return;
            const { svg, width, height } = setup;
            const { staffTop, lineSpacing } = drawStaff(svg, width, height, 1);
            const yPos = staffTop;
            let xPos = 30;
            const noteSpacing = 30;

            currentRhythmPattern.forEach(item => {
                if (item === '|') {
                    drawBarLine(svg, xPos, yPos - lineSpacing*1.5, lineSpacing * 3);
                    xPos += noteSpacing / 2;
                } else {
                    let noteType = 'q';
                    if (item >= 1.9) noteType = 'w';
                    else if (item >= 0.9) noteType = 'h';
                    else if (item >= 0.4) noteType = 'q';
                    else noteType = 'e';
                    drawNote(svg, xPos, yPos, noteType);
                    xPos += noteSpacing * (item * (rhythmMeterSelect.value.endsWith('/8') ? 2 : 1));
                }
                 if (xPos > width - 20) xPos = 30;
            });
        }

        function playRhythm() {
            const ctx = getAudioContext();
            if (!ctx || currentRhythmPattern.length === 0) return;
            currentTempo = parseInt(rhythmTempoSlider.value);
            const beatDuration = 60 / currentTempo;
            let currentTime = 0;

            currentRhythmPattern.forEach(item => {
                if (item !== '|') {
                    playClick(currentTime);
                    currentTime += item * beatDuration * (rhythmMeterSelect.value.endsWith('/4') ? 1 : 0.5); // Adjust for beat unit
                }
            });
        }

        if(rhythmTempoSlider) rhythmTempoSlider.oninput = () => { if(rhythmTempoValue) rhythmTempoValue.textContent = rhythmTempoSlider.value; };
        if(rhythmComplexitySlider) rhythmComplexitySlider.oninput = () => { if(rhythmComplexityValue) rhythmComplexityValue.textContent = rhythmComplexitySlider.value; };
        if(generateRhythmBtn) generateRhythmBtn.onclick = generateRhythm;
        if(playRhythmBtn) playRhythmBtn.onclick = playRhythm;
        window.addEventListener('load', generateRhythm);


        const intervalTypeSelect = document.getElementById('interval-type-select');
        const intervalComplexitySlider = document.getElementById('interval-complexity-slider');
        const intervalComplexityValue = document.getElementById('interval-complexity-value');
        const generateIntervalBtn = document.getElementById('generate-interval-btn');
        const playIntervalBtn = document.getElementById('play-interval-btn');
        const showIntervalBtn = document.getElementById('show-interval-btn');
        const intervalNotationSvgId = 'interval-notation-svg';
        const intervalAnswerOutput = document.getElementById('interval-answer-output');
        let currentInterval = { midi1: 60, midi2: 60, name: "Unison" };

        const intervalMap = {
            "m2": 1, "M2": 2, "m3": 3, "M3": 4, "P4": 5, "A4": 6, "d5": 6, "P5": 7,
            "m6": 8, "M6": 9, "m7": 10, "M7": 11, "P8": 12, "m9": 13, "M9": 14, "m10": 15, "M10": 16
        };

        function generateInterval() {
            if (!intervalTypeSelect) return;
            const intervalType = intervalTypeSelect.value;
            const complexity = parseInt(intervalComplexitySlider.value);
            const baseMidi = 60 + Math.floor(Math.random() * 12); // C4 to B4
            const intervalSemitones = intervalMap[intervalType];
            const midi2 = baseMidi + intervalSemitones;

            currentInterval = { midi1: baseMidi, midi2: midi2, name: intervalTypeSelect.options[intervalTypeSelect.selectedIndex].text };
            drawIntervalNotation();
            intervalAnswerOutput.classList.add('invisible');
            intervalAnswerOutput.textContent = "";
        }

        function drawIntervalNotation() {
            const setup = setupSVG(intervalNotationSvgId, 100);
             if (!setup) return;
            const { svg, width, height } = setup;
            const { staffTop, lineSpacing } = drawStaff(svg, width, height);
            drawClef(svg, staffTop, lineSpacing);

            const noteY1 = midiToY(currentInterval.midi1, staffTop, lineSpacing);
            const noteY2 = midiToY(currentInterval.midi2, staffTop, lineSpacing);

            drawNote(svg, 60, noteY1, 'h');
            drawNote(svg, 100, noteY2, 'h');
        }

        function midiToY(midiNote, staffTop, lineSpacing) {
            const C4_MIDI = 60;
            const C4_Y_POS = staffTop + 5.5 * lineSpacing;
            const semitonesFromC4 = midiNote - C4_MIDI;

            const diatonicSteps = [0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5, 6];
            const octave = Math.floor(semitonesFromC4 / 12);
            const noteInOctave = semitonesFromC4 % 12;
            const stepsFromC = diatonicSteps[noteInOctave < 0 ? noteInOctave + 12 : noteInOctave] + octave * 7;

            return C4_Y_POS - stepsFromC * (lineSpacing / 2);
        }

        function playInterval() {
            playNote(midiToFreq(currentInterval.midi1), 1.0, 0);
            playNote(midiToFreq(currentInterval.midi2), 1.0, 0);
        }

        function showIntervalAnswer() {
             if(!intervalAnswerOutput) return;
             intervalAnswerOutput.textContent = `Intervalo: ${currentInterval.name}`;
             intervalAnswerOutput.classList.remove('invisible');
        }

        if(intervalComplexitySlider) intervalComplexitySlider.oninput = () => { if(intervalComplexityValue) intervalComplexityValue.textContent = intervalComplexitySlider.value; };
        if(generateIntervalBtn) generateIntervalBtn.onclick = generateInterval;
        if(playIntervalBtn) playIntervalBtn.onclick = playInterval;
        if(showIntervalBtn) showIntervalBtn.onclick = showIntervalAnswer;
        window.addEventListener('load', generateInterval);


        const melodyDifficultySlider = document.getElementById('melody-difficulty-slider');
        const melodyDifficultyValue = document.getElementById('melody-difficulty-value');
        const melodyLengthSlider = document.getElementById('melody-length-slider');
        const melodyLengthValue = document.getElementById('melody-length-value');
        const melodyModeSelect = document.getElementById('melody-mode-select');
        const generateMelodyBtn = document.getElementById('generate-melody-btn');
        const playMelodyBtn = document.getElementById('play-melody-btn');
        const melodyNotationSvgId = 'melody-notation-svg';
        let currentMelody = [];

        function generateMelody() {
             if(!melodyDifficultySlider || !melodyLengthSlider || !melodyModeSelect) return;
             const difficulty = parseInt(melodyDifficultySlider.value);
             const numBars = parseInt(melodyLengthSlider.value);
             const mode = melodyModeSelect.value;
             currentMelody = [];
             let currentMidi = 60 + Math.floor(Math.random() * 7);

             const scaleIntervals = {
                 major: [2, 2, 1, 2, 2, 2, 1],
                 minor: [2, 1, 2, 2, 1, 2, 2],
                 dorian: [2, 1, 2, 2, 2, 1, 2],
                 mixolydian: [2, 2, 1, 2, 2, 1, 2],
                 chromatic: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
             };
             let scale = scaleIntervals[mode] || scaleIntervals.major;
             let currentScaleDegree = 0;

             for (let i = 0; i < numBars * 4; i++) {
                 currentMelody.push({ midi: currentMidi, duration: 0.5 });
                 let intervalSize = 0;
                 const r = Math.random();
                 if (difficulty === 1) intervalSize = (r < 0.6) ? 0 : (r < 0.8 ? 1 : -1);
                 else if (difficulty === 2) intervalSize = (r < 0.4) ? 0 : (r < 0.7 ? 1 : (r < 0.9 ? -1 : (Math.random() < 0.5 ? 2 : -2)));
                 else intervalSize = Math.floor(Math.random() * (difficulty + 1)) - Math.floor(difficulty / 2);

                 if (mode !== 'chromatic') {
                     let nextDegree = (currentScaleDegree + intervalSize) % scale.length;
                     if (nextDegree < 0) nextDegree += scale.length;
                     let semitoneChange = 0;
                     if (intervalSize > 0) {
                         for(let k=0; k<intervalSize; k++) semitoneChange += scale[(currentScaleDegree + k) % scale.length];
                     } else if (intervalSize < 0) {
                         for(let k=0; k>intervalSize; k--) semitoneChange -= scale[(currentScaleDegree + k - 1 + scale.length*10) % scale.length];
                     }
                     currentMidi += semitoneChange;
                     currentScaleDegree = nextDegree;
                 } else {
                     currentMidi += intervalSize;
                 }
                 currentMidi = Math.max(55, Math.min(79, currentMidi));
             }
             drawMelodyNotation();
        }

        function drawMelodyNotation() {
            const setup = setupSVG(melodyNotationSvgId, 100);
            if (!setup) return;
            const { svg, width, height } = setup;
            const { staffTop, lineSpacing } = drawStaff(svg, width, height);
            drawClef(svg, staffTop, lineSpacing);
            drawTimeSignature(svg, staffTop, lineSpacing, 4, 4);
            let xPos = 70;
            const noteSpacing = 25;
            let beatsInMeasure = 0;

            currentMelody.forEach((note, index) => {
                if (beatsInMeasure >= 4) {
                    drawBarLine(svg, xPos - noteSpacing / 2, staffTop, lineSpacing * 4);
                    beatsInMeasure = 0;
                }
                if (xPos > width - 30) return;
                const yPos = midiToY(note.midi, staffTop, lineSpacing);
                drawNote(svg, xPos, yPos, 'q');
                xPos += noteSpacing;
                beatsInMeasure += 1;
            });
             drawBarLine(svg, xPos - noteSpacing / 2, staffTop, lineSpacing * 4);
        }

        function playMelody() {
             const ctx = getAudioContext();
             if (!ctx || currentMelody.length === 0) return;
             let currentTime = 0;
             currentMelody.forEach(note => {
                 playNote(midiToFreq(note.midi), note.duration * 0.8, currentTime);
                 currentTime += note.duration;
             });
        }

        if(melodyDifficultySlider) melodyDifficultySlider.oninput = () => { if(melodyDifficultyValue) melodyDifficultyValue.textContent = melodyDifficultySlider.value; };
        if(melodyLengthSlider) melodyLengthSlider.oninput = () => { if(melodyLengthValue) melodyLengthValue.textContent = melodyLengthSlider.value; };
        if(generateMelodyBtn) generateMelodyBtn.onclick = generateMelody;
        if(playMelodyBtn) playMelodyBtn.onclick = playMelody;
        window.addEventListener('load', generateMelody);

    </script>

</body>
</html>

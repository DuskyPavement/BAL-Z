var dict = {"Gözlerimi sabahın köründe açıyorum. Daha güneş bile çıkmamış, ya da perdelerden girmiyor en azından. Uykusuzum, dün gece geç saatlere kadar arkadaşlarla sohbet etmiştim, bu haftasonu Alsancak’a gidip bir şeyler içme planımızı konuşuyorduk ve aklım doluydu.\n":"start_1.mp3",
            "istemeye istemeye gözlerimi ovuşturuyorum ve telefonumun ekranına dokunuyorum. Korkunç parlak mavi bir ışık gözlerimi yakıyor. Saat 6.30, eğer kahvaltı etmezsem yirmi dakika daha uyumayı göze alabilirim, on dakika daha uyuyup kahvaltı da edebilirim ama biraz koşuşturmam gerekir ya da şimdi kalkabilirim...\n":"start_2.mp3",
            "\"Başım\" diye sızlanarak yataktan kalkıyorum, kendimi bir şekilde mutfağa kadar sürükleyip biraz tost ekmeğiyle peynir yemeye başlıyorum.\n":"start_just_wake_up.mp3",
            "":"start_tel.mp3",
            "":"start_ten.mp3",
            "Televizyonu açıyorum, haberlerde pek birşey yok, hastanelere çok fazla insanın akın ettiğiyle ilgili bir şeyler diyor spiker.\n":"start_tv.mp3",
            "":"start_twenty.mp3"
          };
var audioOld = new Audio();
var started = 0;
function playSound(paragraphElement_) {
  if (started > 1){
    audioOld.pause()
  }
  console.log(dict[paragraphElement_]);
  var audio = new Audio("\./audio\/output\/mp3\/" + dict[paragraphElement_]);
  audio.play();
  started = started + 1;
  audioOld = audio;
}

(function(storyContent) {

    var story = new inkjs.Story(storyContent);

    var storyContainer = document.querySelectorAll('#story')[0];

    function showAfter(delay, el) {
        setTimeout(function() { el.classList.add("show") }, delay);
    }

    function scrollToBottom() {
        var progress = 0.0;
        var start = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        var dist = document.body.scrollHeight - window.innerHeight - start;
        if( dist < 0 ) return;

        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t;
            window.scrollTo(0, start + lerp*dist);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    function continueStory() {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Generate story text - loop through available content
        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();

            // Create paragraph element
            var paragraphElement = document.createElement('p');
            paragraphElement.innerHTML = paragraphText;
            storyContainer.appendChild(paragraphElement);
            playSound(paragraphText);
            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);

            delay += 200.0;
        }

        // Create HTML choices from ink choices
        story.currentChoices.forEach(function(choice) {

            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');
            choiceParagraphElement.classList.add("choice");
            choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`
            storyContainer.appendChild(choiceParagraphElement);

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += 200.0;

            // Click on choice
            var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
            choiceAnchorEl.addEventListener("click", function(event) {

                // Don't follow <a> link
                event.preventDefault();

                // Remove all existing choices
                var existingChoices = storyContainer.querySelectorAll('p.choice');
                for(var i=0; i<existingChoices.length; i++) {
                    var c = existingChoices[i];
                    c.parentNode.removeChild(c);
                }

                // Tell the story where to go next
                story.ChooseChoiceIndex(choice.index);

                // Aaand loop
                continueStory();
            });
        });

        scrollToBottom();
    }

    continueStory();

})(storyContent);

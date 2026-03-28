#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Init repo if needed
if [ ! -d ".git" ]; then
    git init
    git checkout -b main
fi

git add -A
git commit -m "init: book metadata"

# ============================================================
# === MAIN BRANCH - La prise de contrôle financière ===
# ============================================================

# --- MAIN COMMIT 1 ---
git commit --allow-empty -m "$(cat <<'EOF'
Premier jour. Tu gares ta Peugeot 308 entre une Tesla Model S et un vélo cargo à 4 000 €. Tu pousses la porte des bureaux de FlashScale, 800 m² au troisième étage d'un immeuble haussmannien du 10ème arrondissement. Rooftop avec vue sur le Sacré-Cœur, mur d'escalade dans l'open space, et un néon rose qui proclame "Move Fast & Break Things". Ta chemise Oxford est impeccable, ton classeur de bienvenue PwC est dans ton sac, et tu as préparé un plan d'onboarding financier de 47 pages.

Le CEO, Mathieu — t-shirt noir, baskets Golden Goose, barbe de trois jours calibrée au millimètre — t'accueille avec un "Bienvenue dans la fusée, bro !" qui te donne immédiatement envie de démissionner. La Head of People, Camille, te tend un MacBook Pro M3 Max ("c'est le standard ici") et te montre ton bureau : un coin de table debout entre la machine à café et le baby-foot. Ton premier réflexe de DAF formé chez PwC : consulter les comptes. Tu demandes l'accès au logiciel de comptabilité. Silence gêné. Mathieu te redirige vers "le Google Drive de la finance". Tu y trouves un fichier nommé "Compta_FINAL_v3_VRAIFINAL_Mathieu(1).xlsx" de 47 Mo, avec 23 onglets dont un intitulé "Truc à vérifier", un autre "Je sais pas où mettre ça" et un dernier "NE PAS TOUCHER - Kevin". Kevin a quitté la boîte il y a 14 mois. Les formules sont cassées depuis août. Le rapprochement bancaire n'a pas été fait depuis 6 mois. Tu sens une sueur froide couler le long de ta colonne vertébrale repassée au fer. C'est pire que tout ce que tu avais imaginé.
EOF
)"
DIVERGE_SAAS=$(git rev-parse HEAD)

# --- MAIN COMMIT 2 ---
git commit --allow-empty -m "$(cat <<'EOF'
Tu ouvres le compte bancaire. Ton premier réflexe : éplucher les relevés. Le mot de passe était écrit sur un Post-it collé sur l'écran de l'ancien office manager. Les prélèvements mensuels te glacent le sang. Notion : 4 500 €/mois. Figma : 3 200 €/mois pour 42 licences alors qu'il y a 12 designers. Slack Business+ : 2 800 €/mois. Quatre outils de gestion de projet parce que chaque équipe a choisi le sien. Un abonnement Spotify Business à 890 €/mois "pour la playlist de l'open space". ChatGPT Team pour tout le monde, y compris le chien du CTO qui a apparemment un compte. Datadog à 7 000 €/mois. AWS à 23 000 €/mois.

Mais le vrai choc, c'est le fichier Excel de 47 Mo. Tu tentes de le comprendre. Les onglets se contredisent. L'onglet "CA" affiche 1,8 M€ ; l'onglet "Revenue_Mathieu" affiche 2,4 M€ ; l'onglet "Vrai chiffre (demander à Kevin)" affiche un #REF! depuis 14 mois. Les catégories de dépenses sont inventées : "Truc tech", "Marketing et fun", "Divers important". Tu n'as aucune visibilité. Tu ne sais pas combien cette boîte gagne, combien elle dépend, ni même combien elle a d'employés (le fichier RH dit 83, la paie en compte 87, et le badge d'accès 91). Tu es aveugle dans un avion qui perd de l'altitude, et le tableau de bord affiche des hiéroglyphes.
EOF
)"
DIVERGE_ERP=$(git rev-parse HEAD)

# --- MAIN COMMIT 3 ---
git commit --allow-empty -m "$(cat <<'EOF'
Tu accèdes enfin au détail des prélèvements SaaS et tu produis ton premier inventaire : 347 abonnements actifs. 289 000 € par an. Tu listes tout dans un tableur (les vieilles habitudes de PwC). 42 licences Figma pour 12 designers. Trois outils de visioconférence. Quatre outils de gestion de projet. Un abonnement Miro que personne n'a ouvert depuis 11 mois. Le chien du CTO a un compte Figma.

Mais le problème n'est pas que la liste est longue. Le problème, c'est que personne ne sait qui a souscrit quoi, ni pourquoi. Quand tu demandes aux managers, chacun pointe l'autre du doigt. "C'est Antoine qui a pris Datadog." "C'est Hugo qui a voulu Monday." "C'est Kevin qui avait... ah non, Kevin est parti." Tu réalises que 289 000 € par an s'évaporent dans un brouillard de responsabilités diluées, et que si tu veux reprendre le contrôle, il va falloir toucher aux outils que les gens considèrent comme des acquis sociaux. Toucher à Spotify, c'est toucher à la culture. Toucher à Figma, c'est toucher à l'identité des designers. Toucher à AWS, c'est toucher au territoire du CTO. Chaque abonnement est une petite forteresse avec un gardien prêt à mourir pour la défendre.
EOF
)"
DIVERGE_NOTES=$(git rev-parse HEAD)

# --- MAIN COMMIT 4 ---
git commit --allow-empty -m "$(cat <<'EOF'
Tu convoques la première réunion budgétaire de l'histoire de FlashScale. Personne ne sait ce que c'est. Camille, la Head of People, demande 180 000 € pour un programme de "bien-être holistique" incluant des séances de sophrologie et un coach de méditation. Antoine, le CTO, veut 500 000 € de serveurs pour un produit qui a 3 400 utilisateurs actifs. Hugo, le Head of Sales, demande 120 000 € de "rep events" — tu découvriras que ça inclut des week-ends à Ibiza. Mathieu annonce qu'il a déjà signé pour un stand à VivaTech à 85 000 € sans en parler à personne.

Tu additionnes les demandes : 2,8 M€. Le CA prévisionnel est de 2,1 M€. Tu prononces ton premier "non" officiel. Le silence est abyssal. Mais le vrai problème apparaît dans les minutes qui suivent : chaque manager vient te voir individuellement pour te dire que SON budget est non-négociable et que c'est celui des AUTRES qu'il faut couper. Hugo te propose de supprimer le budget tech. Antoine suggère de virer les commerciaux. Camille veut "réduire les dépenses qui n'ont pas d'impact humain" — c'est-à-dire les dépenses des autres. Tu as devant toi quatre fiefs, quatre ego, et 700 000 € de trop. Et tout le monde attend que tu choisisses qui va souffrir.
EOF
)"
DIVERGE_NEGO=$(git rev-parse HEAD)

# --- MAIN COMMIT 5 ---
git commit --allow-empty -m "$(cat <<'EOF'
Tu mets en place Spendesk pour les notes de frais. Premier mois, premier rapport : 67 000 € de dépenses non budgétées. Hugo a dépensé 4 200 € en "dîners clients" dont un repas à 890 € un dimanche soir au George V. Pour deux personnes. Un dimanche. Le prospect n'a jamais signé. Un développeur a acheté un écran 49 pouces à 1 800 €. Un autre a déclaré un Uber de 127 € à 3h47 du matin. Camille a commandé 200 tote bags à 35 € pièce pour un salon où elle n'est pas allée.

Tu rédiges ta première "Politique de notes de frais" : 14 pages, des plafonds, des règles. Personne ne la lit. Et c'est là que tu te retrouves face à un dilemme qui va définir ta première année. Tu peux serrer la vis tout de suite : rejeter en masse, sanctionner, faire régner l'ordre. C'est la méthode PwC — efficace, propre, impopulaire. Ou tu peux jouer le jeu politique : laisser passer les premières notes, éduquer progressivement, attendre que les gens comprennent. Moins de friction, mais 67 000 € de plus chaque mois pendant que tu "pédagogises". Ton relevé bancaire dit "agis maintenant". Ton instinct politique dit "attends". Et derrière, les notes de frais de février arrivent déjà.
EOF
)"
DIVERGE_REPORTING=$(git rev-parse HEAD)

# --- MAIN COMMIT 6 ---
git commit --allow-empty -m "$(cat <<'EOF'
Tu produis ton premier reporting financier mensuel. 32 pages. Magnifique. Des graphiques, des tendances, un bridge de CA, une analyse de la marge brute, un suivi du burn rate. Tu l'envoies à tout le COMEX un vendredi. Lundi, réunion. Mathieu arrive avec 10 minutes de retard, regarde son téléphone, et demande : "Donc en gros, on a assez de cash ?" Antoine demande pourquoi AWS coûte si cher — c'est lui qui commande les serveurs. Hugo n'est pas là. Il est "en rendez-vous client" (il était au padel).

Tu as passé 3 jours à produire un document que personne ne lira jamais. Mais en préparant ce reporting, tu as découvert quelque chose qui te glace : le burn rate réel est de 340 000 €/mois. Pas 280 000 comme le pensait Mathieu. L'écart vient de prélèvements automatiques que personne ne suivait, de factures récurrentes sans bon de commande, et de frais bancaires jamais réconciliés. À ce rythme, la trésorerie sera à zéro dans 5,5 mois. Cinq mois et demi. Tu recomptes. Trois fois. Le chiffre ne change pas. Et Mathieu vient de signer un engagement de 85 000 € pour VivaTech, Hugo planifie un offsite à Lisbonne, et Camille lance un recrutement pour un "Head of Happiness". Personne ne sait que le compteur tourne. Sauf toi.
EOF
)"
DIVERGE_TRESORERIE=$(git rev-parse HEAD)

# --- MAIN COMMIT 6b ---
git commit --allow-empty -m "$(cat <<'EOF'
Le baby-foot connecté et autres demandes d'achat surréalistes. Tu inaugures le nouveau processus de demandes d'achat. Formulaire en ligne, justification obligatoire, validation DAF. Les demandes affluent. Morceaux choisis.

Demande n°12 : "Baby-foot connecté avec tracking des scores et intégration Slack — 4 200 €. Justification : team building et culture d'entreprise." Refusée. Demande n°17 : "Casque de réalité virtuelle Meta Quest Pro pour chaque membre de l'équipe produit — 12 000 €. Justification : exploration du métaverse pour notre roadmap 2025." Refusée. Demande n°23 : "Retraite de yoga de 3 jours à Chamonix pour l'équipe design — 18 500 €. Justification : prévention du burn-out." Refusée. Demande n°31 : "Abonnement annuel à un service de livraison de plantes pour l'open space — 4 800 €/an. Justification : les plantes améliorent la productivité de 15% (source : article Medium)." Tu lis la source Medium. C'est un article sponsorisé par un vendeur de plantes. Refusée. Camille te convoque : "Tu refuses TOUT. C'est toxique." "Non Camille, ce qui est toxique c'est de dépenser 4 800 € par an en plantes quand on a 4 mois de trésorerie."
EOF
)"

# --- MAIN COMMIT 7 ---
git commit --allow-empty -m "$(cat <<'EOF'
Mathieu te demande de préparer un plan financier pour les investisseurs. Il te donne "ses projections" : un Google Slides avec une courbe de CA en crosse de hockey qui passe de 1,2 M€ à 15 M€ en 18 mois. "C'est conservateur", dit-il sans ciller. Tu lui demandes sur quoi il base ces chiffres. "Le marché est énorme, bro. TAM de 4 milliards. On prend juste 0,4%."

Tu passes deux semaines à construire un modèle bottom-up : coût d'acquisition client, taux de churn, cycle de vente moyen. Ta projection donne 2,8 M€ dans le scénario optimiste. Mathieu te regarde comme si tu venais d'insulter sa mère. "Mets 8 M€ minimum sinon les VCs vont pas suivre." Et c'est là que ta boussole morale entre en jeu. Mathieu veut que tu mettes 8 M€ dans le deck investisseurs. Toi, tu sais que c'est 2,8 M€ au mieux. Mentir aux VCs, c'est un risque juridique, un risque réputationnel, et un risque moral. Mais envoyer 2,8 M€ quand tous les concurrents envoient des hockey sticks, c'est peut-être condamner la levée de fonds. Et sans levée, c'est la mort dans 5 mois. Ton oeil gauche tressaute — le tic nerveux que tu n'avais pas eu depuis l'audit de Lehman Brothers chez PwC en 2008.
EOF
)"
DIVERGE_CRYPTO=$(git rev-parse HEAD)

# --- MAIN COMMIT 8 ---
git commit --allow-empty -m "$(cat <<'EOF'
FlashScale part en levée de fonds. 8 millions visés. Tu prépares la data room : 6 semaines, 3 crises existentielles. Les VCs défilent. Mathieu raconte une histoire magnifique, tu affiches les tableaux financiers en espérant que personne ne remarque que le CAC est de 12 000 € pour un panier moyen de 8 000 €. Un associé de Partech te pose 47 questions sans réponse. Un autre, chez Elaia, demande le unit economics — Mathieu répond "on optimisera après la levée". La due diligence est un cauchemar.

Mais c'est en préparant les réponses au Q&A d'un VC que tu tombes sur une anomalie. Un virement récurrent de 12 000 € vers une société que tu ne connais pas : "TechFlow Consulting SARL". Tu cherches dans les contrats : rien. Tu demandes à Léa : elle ne sait pas. Tu regardes la fiche fournisseur : créée manuellement par Julien, le Head of Growth, sans passer par le processus achats. Les factures sont validées par... Julien lui-même. Tu vérifies sur Societe.com : TechFlow Consulting SARL, créée il y a 8 mois, gérant : Julien Moreau. Le Head of Growth de FlashScale. Quatre virements de 12 000 €. 48 000 € vers une société dont le gérant est ton collègue. Ton sang ne fait qu'un tour. En pleine levée de fonds, avec des auditeurs qui fouillent la data room, tu viens peut-être de découvrir une fraude interne. Si ça sort pendant la due diligence, c'est la mort de la levée. Si tu le caches, c'est toi qui es complice.
EOF
)"
DIVERGE_FRAUDE=$(git rev-parse HEAD)

# --- MAIN COMMIT 9 ---
git commit --allow-empty -m "$(cat <<'EOF'
La levée traîne. Les VCs hésitent. Pendant ce temps, le burn rate a explosé : 380 000 € par mois. Tu fais le calcul : il reste 4 mois de trésorerie. QUATRE MOIS. Tu présentes la situation au board. Mathieu relativise : "Ça va le faire, j'ai un bon feeling avec Idinvest." Le "bon feeling" se transforme en "on va passer notre tour" deux semaines plus tard.

Tu passes tes nuits à refaire des scénarios de cash : pessimiste, catastrophe, apocalypse. Les trois convergent vers la même date : juillet. En juillet, c'est fini. Et c'est là, un mardi matin à 7h, devant ton tableur de trésorerie, que tu reçois un courrier recommandé. Logo URSSAF. "Avis de contrôle." Périmètre : cotisations sociales, frais professionnels, avantages en nature sur les 3 dernières années. Date du contrôle : dans 3 semaines. Tu fixes les deux documents côte à côte. À gauche, la projection de cash qui dit "mort en juillet". À droite, l'URSSAF qui débarque dans 3 semaines pour fouiller 3 ans de comptes que personne n'a tenus correctement. Si le redressement est lourd — et vu l'état des dossiers, il le sera —, juillet se rapproche de mai. Tu sens une sueur froide. Tu te souviens de ton dernier contrôle URSSAF chez PwC : le client avait un département juridique de 12 personnes. Ici, tu as toi et un stagiaire qui fait aussi le community management.
EOF
)"
DIVERGE_FISCAL=$(git rev-parse HEAD)

# --- MAIN COMMIT 10 ---
git commit --allow-empty -m "$(cat <<'EOF'
Vendredi matin, réunion de crise. Tu arrives avec un PowerPoint de 3 slides — pas 32, trois. Slide 1 : "Nous avons 3,5 mois de cash." Slide 2 : "Si on ne change rien, FlashScale meurt le 18 juillet." Slide 3 : "Voici le plan." Pour la première fois, tout le monde t'écoute. Vraiment. Même Hugo a posé son téléphone.

Ton plan est brutal : gel des embauches immédiat, renégociation de tous les contrats fournisseurs, suppression des outils SaaS inutiles, fin des team buildings à l'étranger, passage en flex office pour sous-louer un étage. Tu regardes Mathieu droit dans les yeux : "Si tu veux que cette boîte existe encore à Noël, tu me laisses faire." Il acquiesce. Pour la première fois, le DAF a le pouvoir. Mais en sortant de la réunion, tu croises le regard d'Antoine. Et celui de Camille. Ils ont acquiescé aussi, mais tu as vu autre chose dans leurs yeux. De la peur. Pas la peur de la mort de la boîte — la peur de ce que tu vas leur faire. Et tu sais qu'ils n'ont pas tort d'avoir peur. Le plan que tu as dans la tête va faire mal. La question n'est pas si tu dois couper — c'est combien, et où, et qui va en souffrir le plus.
EOF
)"
DIVERGE_COSTKILLING=$(git rev-parse HEAD)

# --- MAIN COMMIT 11 ---
git commit --allow-empty -m "$(cat <<'EOF'
Le cost-killing commence. Lundi matin, premier email de restrictions. L'open space bruisse de murmures. Les abonnements SaaS non essentiels sont coupés : adieu Monday, adieu les licences Figma fantômes, adieu Spotify Business ("ON VA TRAVAILLER DANS LE SILENCE ?" hurle un dev sur Slack). Le café Nespresso est remplacé par du café en grain. Les fruits passent de trois livraisons à une. Tu renégocies AWS : 40% des instances tournent dans le vide. Économie : 9 200 €/mois. Tu renégocies les bureaux : -15%. Tu es méthodique, implacable, et profondément impopulaire. Quelqu'un a collé un Post-it sur ton écran : "Le bonheur au travail est un KPI aussi."

Et puis Mathieu te convoque, la porte fermée. Tu t'attends à un soutien. Mais non. "Kevin, j'ai besoin que tu valides une dépense de 82 000 €. Du mobilier design. J'ai déjà signé la commande." Tu fixes Mathieu. 82 000 € de mobilier. Pendant un plan d'austérité. Signé sans validation. Un canapé Vitra à 12 000 €, des fauteuils Eames à 6 500 € pièce, une lampe Flos. Le CEO qui t'a donné les pleins pouvoirs pour couper vient de signer une dépense de 82 000 € dans ton dos. Le message est limpide : les règles s'appliquent à tout le monde sauf à lui. Tu as une veine qui palpite sur ta tempe. Tu peux laisser passer — tu as besoin de son soutien pour le reste du plan. Ou tu peux l'affronter — et risquer de perdre le mandat qu'il vient de te donner.
EOF
)"
DIVERGE_CEO_FOLIE=$(git rev-parse HEAD)

# --- MAIN COMMIT 12 ---
git commit --allow-empty -m "$(cat <<'EOF'
Après 6 semaines d'austérité, les chiffres parlent. Le burn rate mensuel est passé de 380 000 € à 245 000 €. Économie de 135 000 € par mois sans avoir viré personne. Les abonnements SaaS sont passés de 289 000 € à 112 000 € par an. AWS de 23 000 € à 14 500 €/mois. Les notes de frais ont chuté de 67%. Le runway est passé de 3,5 mois à 7 mois. Tu présentes ces chiffres au board avec sobriété. Mathieu te regarde différemment — pas avec affection, mais avec du respect. "T'es quand même un putain de tueur", dit-il. Tu notes que "putain de tueur" n'est pas une compétence listée dans le référentiel PwC.
EOF
)"

# --- MAIN COMMIT 13 ---
git commit --allow-empty -m "$(cat <<'EOF'
Surprise : la discipline financière attire les investisseurs. Un partner de Balderton, rencontré au France Digitale Day, te dit : "Enfin une startup française avec un DAF sérieux." En deux semaines, trois term sheets sur la table. Les VCs adorent ton reporting, ta rigueur, tes projections réalistes. L'un d'eux confie : "Tu sais ce qui nous fait peur ? Les startups où le DAF dit oui à tout."

La négociation est rude — dilution, liquidation preference, vesting — mais tu connais chaque ligne. Mathieu fait le show en front, c'est toi qui closes en back. La levée est signée : 6 millions d'euros, pré-money de 24M. Moins que les 8M visés, mais c'est fait. FlashScale survit. Et maintenant, 6 millions arrivent sur le compte. Mathieu veut recruter 40 personnes, ouvrir Londres, lancer trois produits. Hugo veut doubler les commerciaux. Camille veut un Head of Happiness. Antoine veut réécrire toute l'architecture from scratch. Ils ont tous la mémoire courte. Il y a 8 semaines, la boîte mourait. Aujourd'hui, l'argent coule et les vannes se rouvrent. Tu sens le pattern se répéter — et cette fois, tu dois décider : lâcher du lest pour que les gens reprennent confiance, ou maintenir l'austérité et risquer la révolte dans une boîte qui vient d'être sauvée.
EOF
)"
DIVERGE_TRANSFO=$(git rev-parse HEAD)

# --- MAIN COMMIT 14 ---
git commit --allow-empty -m "$(cat <<'EOF'
Post-levée : l'euphorie dangereuse et le syndrome de la carte bleue qui chauffe. L'argent est sur le compte. 6 420 000 €. Mathieu est en mode conquérant. Tu mets en place un comité d'engagement : toute dépense supérieure à 5 000 € passe par toi. Mathieu proteste : "Tu vas pas valider chaque stylo ?" "Non, juste chaque stylo à 5 000 €, et vu votre historique, ça arrive plus souvent qu'on croit."

Tu commences à trouver un équilibre. Les recrutements reprennent, mais avec un business case par poste. Le budget tech est augmenté de 30%, pas de 200%. Les team buildings reviennent, mais en France. L'austérité s'allège, sans disparaître. Et pour la première fois, les gens viennent te voir AVANT de dépenser, pas APRÈS. Même Hugo te demande ton avis sur un devis de 8 000 € pour un salon. Tu dis oui. Il manque de s'évanouir.
EOF
)"

# --- MAIN COMMIT 15 ---
git commit --allow-empty -m "$(cat <<'EOF'
Un an plus tard. FlashScale a atteint 3,8 M€ de CA (pas 15M, Mathieu, pas 15M). La marge brute est passée de 42% à 68%. Le burn rate est stabilisé à 280K/mois. Le runway est de 14 mois. Tu as mis en place un vrai ERP (Pennylane, pas SAP — tu as appris), un processus budgétaire trimestriel, et une culture de la responsabilité financière. Les notes de frais sont sous contrôle. Les abonnements SaaS audités chaque trimestre. Tu as convaincu Antoine de mettre des alertes de coût sur AWS.

Tu es toujours celui qui dit non. Mais maintenant, quand tu dis non, les gens comprennent pourquoi. Et quand tu dis oui — rarement, avec parcimonie, après analyse — ça a du poids. C'est un dimanche soir. Tu viens de passer le week-end à préparer le budget Q3 parce que personne n'a rempli son template. Tu ouvres LinkedIn par réflexe. Un poste chez PwC : "Senior Manager, Transaction Advisory Services". Méthodologie structurée. Équipes organisées. Clients qui ont des comptabilités tenues. Horaires pires, mais au moins tu sais pourquoi tu bosses. Tu enregistres l'offre. Tu la fixes pendant 10 minutes. Puis ton téléphone vibre : un message de Mathieu. "Bro, Hugo veut organiser un team building à Dubaï, je lui ai dit de t'en parler avant." Mathieu qui redirige Hugo vers toi. Il y a un an, il aurait signé sans te prévenir. Quelque chose a changé. La question est : est-ce que ça suffit pour que tu restes ?
EOF
)"
DIVERGE_RETOUR=$(git rev-parse HEAD)

# --- MAIN COMMIT 16 ---
git commit --allow-empty -m "$(cat <<'EOF'
Board meeting de fin d'année. Les investisseurs de Balderton sont en visio depuis Londres. Tu présentes les comptes annuels. Pour la première fois, les chiffres sont propres, réconciliés, audités. Pas un trou, pas une approximation. Le partner de Balderton sourit : "C'est le meilleur reporting qu'on ait reçu de notre portefeuille français."

Mathieu bombe le torse comme si c'était son idée. Tu ne dis rien — tu as appris que l'ego du CEO est un actif immatériel qu'il ne faut pas déprécier. Le board vote la stratégie 2025 : croissance maîtrisée, path to profitability en 18 mois. C'est exactement ce que tu avais recommandé en septembre. Mathieu t'envoie un message après le board : "Merci. Sérieusement." Tu sauvegardes le message. C'est la première fois en un an. Et puis, le lendemain, un appel inattendu. Un fonds de private equity. Ardian Growth. "On suit FlashScale depuis 6 mois. Vos derniers résultats sont intéressants. On aimerait explorer une opération." Tu raccroches. Si Ardian entre au capital, c'est un changement de dimension. Les fonds de PE ne font pas dans le "move fast and break things". Ils font dans le "deliver EBITDA or die". Ça veut dire un niveau de rigueur financière que même toi, l'ancien de PwC, tu pourrais trouver étouffant. Mais ça veut aussi dire un exit potentiel à 50, 60, peut-être 80 millions. Pour FlashScale. Pour les fondateurs. Et pour toi, avec tes 1,5% de BSPCE.
EOF
)"
DIVERGE_PE=$(git rev-parse HEAD)

# --- MAIN COMMIT 17 ---
git commit --allow-empty -m "$(cat <<'EOF'
Épilogue. Tu reçois un message LinkedIn d'un chasseur de têtes. "Bonjour, je recrute un CFO pour une startup en pre-Series A, 15 employés, secteur fintech. Le CEO est visionnaire et cherche quelqu'un pour structurer la finance. Intéressé ?" Tu lis le message trois fois. Pre-Series A. 15 employés. Pas de comptabilité. Un CEO "visionnaire". Tu connais cette histoire — c'est exactement celle que tu as vécue il y a un an.

Tu souris. Tu fermes LinkedIn. Tu ouvres ton reporting mensuel. Tu as encore un budget à boucler, trois notes de frais suspectes à vérifier, et un devis de 45 000 € pour un séminaire à Lisbonne à refuser. Le DAF qui dit toujours non est exactement là où il doit être. Et quelque part, entre les tableaux Excel et les slides de board, entre les "non" fermes et les rares "oui" calculés, tu as trouvé ta place dans cette fusée. Fin.
EOF
)"

# ============================================================
# === BRANCHES SECONDAIRES ===
# ============================================================

# === BRANCH: feature/audit-saas ===
git checkout -b feature/audit-saas $DIVERGE_SAAS

git commit --allow-empty -m "$(cat <<'EOF'
Tu lances l'audit SaaS : mission archéologique dans les entrailles numériques de FlashScale. Tu crées un tableur et tu recenses chaque abonnement. Ta méthode : éplucher 12 mois de relevés bancaires, interroger chaque manager, crawler les boîtes mail. Premier constat : personne ne sait combien d'outils la boîte utilise. Camille pense "une quarantaine". Antoine dit "peut-être 60-70 côté tech". Après 3 jours, tu en trouves 347. Trois cent quarante-sept abonnements SaaS actifs pour 85 personnes. Soit 4,08 outils par employé. Tu sens que le PwC en toi va adorer cette mission.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les découvertes hallucinantes : 42 licences Figma, 12 designers, 3 outils de visioconférence. Les résultats sont un festival. 42 licences Figma actives pour 12 designers — les 30 autres appartiennent à des gens qui ont quitté la boîte, des stagiaires de 2022, et mystérieusement au chien d'Antoine ("Bruno", un golden retriever qui a un email @flashscale.io). 3 outils de visioconférence : Zoom Business (2 100 €/mois), Google Meet (inclus), et un Whereby que personne ne connaît. 4 outils de gestion de projet. Un Miro Business à 890 €/mois — dernier board créé : il y a 11 mois. Et cerise sur le gâteau : Spotify Business à 890 €/mois pour la playlist lo-fi de l'open space.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le cas Salesforce : 2 400 €/mois pour un CRM que personne n'utilise correctement. Tu demandes à Hugo un état des lieux. "Tout est dans Salesforce, t'inquiète." Tu ouvres Salesforce. 847 opportunités. 643 pas mises à jour depuis 90 jours. 122 marquées "Closing soon" depuis avril. Les notes de contact : "RDV OK", "A relancer", "Bon feeling". Un commercial a rentré un deal à 500 000 € en "90% probability" — le prospect est une association de pêcheurs du Finistère qui a téléchargé un livre blanc. Tu comprends pourquoi les prévisions de CA sont de la science-fiction.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le grand ménage : tu passes de 347 outils à 89. L'open space est en deuil. Tu présentes ton plan au COMEX. Sur 347 outils, tu en gardes 89. Économie : 177 000 €/an. Un designer menace de démissionner parce que tu remplaces Sketch par Figma. Un dev pleure la perte de Stack Overflow premium. Hugo exige de garder LinkedIn Sales Navigator — tu acceptes, à condition qu'il prouve un ROI en 3 mois. Le Spotify Business est remplacé par une enceinte Bluetooth et la playlist de Camille. Première chanson : "Money, Money, Money" d'ABBA. Tu ne sais pas si c'est de l'ironie ou un message subliminal.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le cas Datadog : 7 000 €/mois pour monitorer un produit qui plante quand même. Tu demandes à Antoine ce que ça monitore. Il te montre 847 dashboards. Tu en ouvres 10 : 6 affichent des données obsolètes, 2 sont cassés, 2 monitorent des services morts. "Antoine, on paie 84 000 €/an pour surveiller des fantômes numériques." Il proteste : "Si on coupe Datadog et qu'on a un incident..." "Vous avez eu 3 incidents le mois dernier. Datadog n'en a détecté aucun — c'est un client qui a tweeté." Tu réduis le plan de 70%. La facture passe de 7 000 € à 2 100 €/mois. Deux mois plus tard, personne n'a remarqué la différence.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Épilogue SaaS : 6 mois plus tard, personne ne se souvient des outils supprimés. Sauf Bruno le chien. Personne ne s'est plaint après la première semaine. Le designer est devenu le power user Figma de l'équipe. Les devs ont survécu sans Stack Overflow premium. Hugo n'a pas prouvé le ROI de Sales Navigator. L'économie annuelle est confirmée à 177 000 €. Tu as créé un process de validation pour tout nouvel abonnement : fiche de besoin, comparatif, validation DAF. C'est bureaucratique, c'est chiant, et ça marche. Seul regret : Bruno le golden retriever avait un taux d'utilisation de Figma supérieur à celui de trois commerciaux.
EOF
)"

git checkout main

# === BRANCH: feature/erp-cauchemar ===
git checkout -b feature/erp-cauchemar $DIVERGE_ERP

git commit --allow-empty -m "$(cat <<'EOF'
Tu décides d'implémenter un ERP. Devant le chaos du fichier Excel, tu prends une décision fatale : il faut un ERP. Un vrai. Tu contactes SAP. Le commercial te fait une démo éblouissante. "SAP Business One, c'est la solution pour les scale-ups ambitieuses." Coût : 180 000 € d'implémentation, 4 500 €/mois, 6 mois de déploiement. Tu valides. Après tout, chez PwC, tous tes clients avaient SAP. Sauf que tes clients avaient aussi 10 000 employés, un DSI, et un budget IT de 20 millions.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 3 : le projet ERP a 2 mois de retard et le budget a doublé. Le prestataire d'intégration envoie un "point projet" : planning décalé de 8 semaines, 3 développeurs supplémentaires, module de notes de frais incompatible avec Spendesk. Coût additionnel : 95 000 €. Antoine refuse que ses équipes participent aux ateliers : "Mes devs codent le produit, pas un ERP des années 90." Le stagiaire passe ses journées à remplir des fichiers de migration en pleurant. Tu appelles l'expert-comptable pour lui demander si on peut rester sur Excel "encore un petit moment". Il raccroche.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 9 : l'ERP est en prod. Enfin, "en prod" est un grand mot. Après 9 mois de calvaire, SAP est "live". Coût total : 410 000 €. Le jour du go-live, rien ne marche. Les factures sont en double. Le rapprochement bancaire mouline 47 minutes puis erreur 500. Le module RH refuse d'importer les fiches de paie. Antoine ricane : "Je t'avais dit que c'était une idée de merde." Tu passes la nuit avec le consultant SAP (un junior de 24 ans qui découvre le module Finance en temps réel). À 4h du matin, tu sors un P&L. Il est faux, mais il existe. Tu manges un Twix trouvé dans le tiroir de Kevin. Tu te demandes si c'est ça, la transformation digitale.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 12 : la mutinerie. L'équipe finance revient sur Excel en douce. Tu découvres que Léa et Théo ont créé un Excel parallèle pour "vérifier les chiffres de SAP". En réalité, ils font toute la compta sur Excel et recopient dans SAP pour que ça ait l'air de fonctionner. Du Potemkine comptable. "SAP plante 3 fois par jour. La dernière fois, il a effacé les factures de mars." Tu as dépensé 350 000 € pour un ERP que tout le monde contourne. Le consultant te propose une formation à 25 000 €. Tu raccroches. Tu fixes le plafond. Le plafond ne te juge pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 14 : tu abandonnes SAP et migres sur Pennylane en 3 semaines. L'humilité a un prix : 410 000 €. La décision la plus difficile de ta carrière : abandonner SAP. Le ROI est négatif, l'outil sous-utilisé, l'équipe le déteste. Le consultant a démissionné pour devenir prof de surf à Hossegor. Tu fais la migration vers Pennylane en 3 semaines. Un outil qui fait 80% de SAP à 300 €/mois au lieu de 4 500 €. L'expert-comptable est aux anges. Mathieu : "Ça nous a coûté combien ?" "410 000 euros." Silence. Parfois, le DAF qui dit toujours non doit aussi savoir dire : "J'ai merdé."
EOF
)"

git checkout main

# === BRANCH: feature/cost-killing ===
git checkout -b feature/cost-killing $DIVERGE_COSTKILLING

git commit --allow-empty -m "$(cat <<'EOF'
Plan d'austérité, jour 1 : tu supprimes le café Nespresso. La révolution commence. Le premier acte est symbolique : les capsules Nespresso (780 €/mois) remplacées par une machine à café en grain Jura (investissement 1 200 €, grain à 180 €/mois). Le café est meilleur. Subjectivement, c'est la fin du monde. Slack #random explose : 147 messages en 2 heures. "C'est la fin de la culture d'entreprise." Camille : "Le café, c'est un symbole. C'est ce qui fait qu'on est une startup cool et pas une SSII de Massy-Palaiseau." Tu lui réponds que la SSII de Massy-Palaiseau est probablement rentable, elle.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 2 : les fruits passent de 3 livraisons à 1, et les team buildings à l'étranger sont annulés. Les paniers bio passent de 420 €/mois à 140 €. Le team building trimestriel — week-end en château, 800 €/personne — est remplacé par une journée à La Villette avec pique-nique. Camille : "Le team building, c'est ESSENTIEL pour la rétention." Tu montres le tableau de trésorerie : "On est surtout en guerre de survie." Hugo est furieux que son budget "prospection événementielle" (soirées au Buddha-Bar) soit amputé de 80%. Antoine est le plus raisonnable : "Tant qu'on touche pas aux serveurs et au salaire, je m'en fous du café." Tu l'ajoutes mentalement à ta liste des "gens presque sensés".
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 4 : Glassdoor titre "FlashScale : de startup cool à goulag tech". Un avis anonyme fait le tour de l'open space : "Depuis le nouveau DAF, FlashScale est un goulag. Plus de café, plus de fruits, plus de team buildings. Note : 2/5." Le NPS employé passe de 45 à 32. Tu réalises que le cost-killing, c'est aussi de la gestion humaine. Tu réinstaures un budget "moments conviviaux" de 2 000 €/mois — 24 € par personne. C'est pas le château en Loire, mais c'est mieux que le goulag.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 3 : l'austérité porte ses fruits (pas bio, mais des fruits quand même). Économies mensuelles : 135 000 €. Aucun licenciement. Aucun départ. Le dev qui menaçait de partir pour le café s'est acheté sa propre Nespresso qu'il planque sous son bureau. Burn rate de 380K à 245K. Runway de 3,5 à 7 mois. Tu as survécu au Glassdoor, au Slack-gate du café, et à la pétition de Camille. 90% des gens s'adaptent en 2 semaines. Tu leur as offert un mug "Le DAF qui dit toujours non" — c'est devenu un objet culte.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La guerre du chauffage : tu baisses la clim de 2 degrés et déclenches une insurrection. La facture d'électricité : 3 400 €/mois. Clim à 21°C en été, chauffage à 24°C en hiver. Tu passes à 23°C partout. Économie : 600 €/mois. Un dev arrive en doudoune. Un autre branche un radiateur soufflant. Canal Slack #temperature-gate : 47 participants. Sondage : "Le DAF a-t-il le droit de réguler notre confort thermique ?" 78% non, 15% "il est temps qu'on parte", 7% "c'est quoi un DAF ?". Tu tiens bon. Deux semaines plus tard, tout le monde a oublié. Sauf le dev à la doudoune, qui la porte par principe.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Fin alternative : le cost-killing est allé trop loin, et FlashScale perd ses meilleurs talents. Trois départs le mois suivant. Pas n'importe lesquels : la lead designer, le principal architecte backend, le meilleur commercial. Leurs lettres ne parlent pas de café — elles parlent de "manque de vision", de "culture de la méfiance", de "l'impression qu'on gère une entreprise en déclin". Tu as coupé quelque chose d'intangible : le sentiment d'appartenir à un projet excitant. Antoine te prend à part : "Tu gères cette boîte comme un bilan comptable. Sauf que les gens, c'est pas une ligne de charges." Tu rentres chez toi en métro. Tu penses à PwC, où au moins les chiffres ne démissionnaient pas.
EOF
)"

git checkout main

# === BRANCH: feature/notes-de-frais ===
git checkout -b feature/notes-de-frais $DIVERGE_NOTES

git commit --allow-empty -m "$(cat <<'EOF'
Le musée des horreurs : top 10 des notes de frais les plus absurdes de FlashScale. Tu reprends l'historique complet. Numéro 10 : billet Paris-Barcelone Business, 1 200 €, "conférence tech" — gratuite et en ligne. Numéro 9 : nuit au Ritz, 890 €, "client late meeting" — le client est à Montreuil. Numéro 8 : MacBook "tombé dans la piscine pendant un workation à Bali" — 3 500 €. Numéro 7 : 47 Uber Eats en un mois, "déplacements fréquents" — tous livrés à son domicile. Numéro 6 : AirPods Max à 629 €, "équipement de travail" — exclusivement pour podcasts de développement personnel.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le top 5 : quand Hugo transforme la carte corporate en lifestyle. Numéro 5 : Hugo, dîner à 1 340 € pour deux au Pavillon Ledoyen. Un mardi. Le "client" était sa femme (#AnniversaireDeMarriage sur Instagram). Numéro 4 : Herman Miller Aeron à 1 600 € "pour le télétravail" — gardée après déménagement. Numéro 3 : 4 800 € de mini-bar au Mama Shelter pendant un off-site de 2 jours. Tu ne savais pas que c'était physiquement possible. Numéro 2 : Uber 340 € Paris-Deauville un vendredi 18h, "réunion client". Le client n'existe pas dans Salesforce. Et numéro 1...
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La note de frais numéro 1 : la légende du MacBook en piscine, saison 2. Un commercial a déclaré un MacBook Pro M2 Max "détruit lors d'un accident de travail". Description : "tombé du balcon de l'hôtel pendant une session de travail." L'hôtel : resort 5 étoiles à Marrakech. Le déplacement : week-end de 4 jours en août. Les logs : aucune connexion VPN. Tu refuses. Il fait appel auprès de Mathieu qui rembourse la moitié. Tu notes : "Jour 47 — ai failli démissionner pour la première fois. Raison : un MacBook et un balcon à Marrakech."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La nouvelle politique : 14 pages, des plafonds, et la fin de la récréation. Repas : 80 €/personne max. Uber : déplacements pro après 21h. Hôtels : 200 €/nuit province, 250 € Paris. La "clause Hugo" : tout repas "client" nécessite nom, société, et objet. Le premier mois, tu rejettes 34%. Le deuxième, 12%. La pédagogie par la douleur, c'est la méthode PwC.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
6 mois plus tard : les notes ont baissé de 67%. Hugo t'invite à déjeuner — à ses frais. De 67 000 € à 22 000 €/mois. Hugo distingue "dépense pro" et "lifestyle perso". Le MacBook de Marrakech est devenu un mythe fondateur. Hugo t'invite à déjeuner. Restaurant normal. Carte personnelle. Tu manques de t'évanouir. En sortant : "Je t'aimais pas au début, mais tu m'as appris un truc. Dépenser l'argent des autres, c'est facile. Dépenser le sien, ça rend plus malin." C'est la plus belle chose qu'un commercial t'ait jamais dite.
EOF
)"

git checkout main

# === BRANCH: feature/negociation-fournisseurs ===
git checkout -b feature/negociation-fournisseurs $DIVERGE_NEGO

git commit --allow-empty -m "$(cat <<'EOF'
Tu ouvres le fichier fournisseurs : 89 contrats, aucun renégocié. Jamais. Léa te montre un dossier Drive avec 89 PDF. Aucun suivi. Aucune date de renouvellement tracée. FlashScale paie le prix catalogue de tous ses fournisseurs depuis la création. Le loyer n'a jamais été renégocié malgré un marché en baisse post-Covid. Le contrat d'assurance n'a pas été revu depuis 3 ans. Le prestataire de paie facture 45 €/bulletin au lieu de 12-15 €. Tu sens l'excitation monter. C'est comme trouver un coffre-fort ouvert : il y a de l'or partout, il suffit de le ramasser.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La négociation AWS : tu découvres qu'Antoine n'a jamais demandé de Reserved Instances. En 30 minutes, tu découvres : pas de Reserved Instances (économie 30-40%), pas de crédits AWS Activate, 12 instances EC2 24/7 utilisées uniquement en heures de bureau. Tu actives tout. La facture passe de 23 000 € à 14 500 €. Antoine : "J'aurais pu le faire moi-même." "Oui. Mais tu ne l'as pas fait en 3 ans, Antoine." 8 500 €/mois d'économies récurrentes dans ton tableur. Ce tableur devient ton journal intime.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le hat-trick de la négo : propriétaire, prestataire de paie, assureur. Le bail arrive à échéance dans 8 mois. Lettre recommandée signalant ton intention de ne pas renouveler (bluff total). Il rappelle dans l'heure : -15% et 3 mois de franchise. Économie : 2 250 €/mois. Le prestataire de paie à 45 €/bulletin : appel d'offres, il baisse à 18 € en pleurant. Économie : 2 700 €/mois. L'assureur : concurrence via un courtier PwC. -25%. Total en 3 semaines : 14 250 €/mois, 171 000 €/an. Zéro coût. Juste un téléphone et un DAF qui sait dire non.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le cas WeWork : comment sortir d'un engagement de 3 ans sans payer 540 000 € de pénalités. Engagement 3 ans, 15 000 €/mois, signé par Mathieu sans clause de sortie. Tu épluches le bail. Page 47, clause 12.3.b : en cas de "changement substantiel de l'activité du preneur", renégociation possible. Tu argumentes que le flex office est un changement substantiel. C'est tiré par les cheveux, mais chez PwC tu as appris que la négo c'est 50% culot, 50% clauses obscures. WeWork cède : -20% et droit de sous-louer. Mathieu : "Comment t'as fait ?" "J'ai lu le contrat. Tout le contrat."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mais attention : trop négocier, c'est perdre des partenaires. L'agence de dev offshore — 4 développeurs à 3 500 €/mois — tu demandes -25%. Ils acceptent. Deux mois plus tard, les meilleurs devs sont réaffectés, les remplaçants sont juniors, le code est bugué. Antoine : "Tu as sacrifié la qualité pour 3 500 €/mois ?" Il a raison. Un fournisseur étranglé livre de la merde. Tu remontes à 3 200 € et tu t'excuses. Le mot "excuses" te coûte physiquement, mais les bons devs reviennent. Le respect a aussi un ROI.
EOF
)"

git checkout main

# === BRANCH: feature/fraude-interne ===
git checkout -b feature/fraude-interne $DIVERGE_FRAUDE

git commit --allow-empty -m "$(cat <<'EOF'
L'enquête silencieuse : 48 000 € détournés en 4 mois via une société écran. Tu ne dis rien à personne. Tu remontes 6 mois de virements. TechFlow Consulting : 4 virements de 12 000 €. Les factures existent — Julien les a validées lui-même dans le workflow (personne ne contrôlait sous 15 000 €). Les prestations sont fictives : des textes ChatGPT de 300 mots facturés 2 000 € pièce. Tu constitues un dossier : relevés, factures, Kbis, captures. Tu appelles un avocat en droit du travail, un en droit pénal, et ton ancien manager PwC. Il te dit : "Le profil type de la fraude interne : employé de confiance, accès aux budgets, faible contrôle. Tu as le cas d'école."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le face-à-face : Julien nie, pleure, menace, puis avoue. Dans cet ordre. Mardi 9h, salle Rosa Parks. L'avocat en visio. Mathieu présent. Tu poses les documents. Julien nie : "C'est un homonyme." Tu montres le Kbis. Il pleure : "J'ai des dettes, le loyer..." Tu restes impassible — un directeur financier du CAC40 a pleuré devant toi en 2019, tu as survécu. Il menace : "Si vous me virez, je balance aux prud'hommes." Mathieu blêmit. Finalement, il avoue. 48 000 €. Licenciement pour faute grave. Plainte déposée. Le rapport est factuel, froid, implacable. Le soir, tu bois un whisky de plus que d'habitude.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le week-end entre la découverte et le face-à-face : le plus long de ta vie. Tu sais. Julien ne sait pas que tu sais. Tu dois attendre lundi — l'avocat a besoin du week-end. Vendredi, Julien te croise au café : "Ça va ? T'as l'air tendu." "Le budget Q4." Il sourit. Tu souris. Deux hommes qui sourient, dont l'un sait que l'autre lui vole 12 000 €/mois. Ta femme te demande ce qui ne va pas. "Rien, le boulot." Tu passes le week-end à lire le Code du travail et les articles sur l'abus de confiance. Lundi 7h30, tu es au bureau. L'avocat est prêt. Julien arrive à 9h45, café à la main, sourire aux lèvres.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les conséquences : tu mets en place des contrôles internes. Personne ne te remercie. Double validation pour tout achat supérieur à 5 000 €. Audit trimestriel des fournisseurs. Vérification systématique dans les bases légales. Séparation des rôles demandeur/validateur. Mathieu : "C'est pas un peu parano ?" "48 000 euros, Mathieu." L'affaire reste secrète — accord transactionnel. Mais la rumeur circule. Quelqu'un poste un mème de "The Office" : "Sometimes I'll start a fraude and I don't even know where it's going." Tu ne ris pas. Enfin, si. Un peu.
EOF
)"

git checkout main

# === BRANCH: feature/reporting-obsessionnel ===
git checkout -b feature/reporting-obsessionnel $DIVERGE_REPORTING

git commit --allow-empty -m "$(cat <<'EOF'
47 KPIs, 12 dashboards, et un meeting hebdo de 3 heures. Traumatisé par le manque de visibilité, tu bascules dans l'excès inverse : tu veux TOUT mesurer. 12 dashboards Notion. 47 KPIs quotidiens : CAC, LTV, churn, MRR, ARR, burn rate, runway, magic number, rule of 40... Tu instaures un "Financial Review Meeting" hebdo de 3h, obligatoire pour le COMEX. Première session : Antoine regarde ses mails, Hugo est au téléphone, Camille dessine des bonshommes, Mathieu s'endort au bout d'1h30. Tu continues jusqu'à la slide 47. Zéro question.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le syndrome du dashboard : des chiffres partout, des réponses nulle part. Hugo veut "juste les 3 métriques clés" — tu lui en donnes 14. Antoine veut un suivi cloud temps réel : 23 métriques, rafraîchi chaque heure, jamais consulté. Les meetings s'enlisent dans les définitions : "C'est quoi un utilisateur actif ?", "On compte le MRR avec les trials ?", "Le churn, c'est logo ou revenue ?" Tu as créé un monstre bureaucratique. L'information est partout, la compréhension nulle part.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le jour où Mathieu dit : "Arrête tes tableaux, dis-moi juste si on va mourir ou pas." Mardi matin, slide 23, tu expliques le net revenue retention par cohorte. Mathieu pose sa main sur la table : "STOP. Je veux savoir trois choses : assez de cash, on croît, on sera rentables ? C'est TOUT." Il a raison. Tu as reproduit le syndrome PwC : noyer le client sous les données pour montrer ton sérieux. Ce soir-là, tu supprimes 9 dashboards sur 12, tu réduis de 47 à 8 KPIs, et le meeting passe de 3h à 30 min. Mathieu : "C'est le meilleur meeting qu'on ait eu."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le bon reporting : 8 KPIs, 30 minutes, et un CEO qui comprend les chiffres. Un email le lundi : cash, runway, MRR, croissance MoM, burn rate, gross margin, clients payants, NPS. Code couleur : vert/orange/rouge. Flash finance mardi : 30 min, 5 slides. Pour la première fois, des questions intelligentes. Antoine demande pourquoi les coûts serveur ont augmenté de 8%. Hugo réalise que sa conversion a chuté de 30%. Camille note que le coût de recrutement a doublé. Les chiffres deviennent un outil de conversation, pas de torture. Le vrai rôle du DAF : traduire les chiffres en décisions.
EOF
)"

git checkout main

# === BRANCH: hotfix/tresorerie-negative ===
git checkout -b hotfix/tresorerie-negative $DIVERGE_TRESORERIE

git commit --allow-empty -m "$(cat <<'EOF'
Vendredi 17h42 : alerte Qonto. Solde : -3 247,18 €. Tu rangeais ton bureau (habitude PwC). Ton téléphone vibre. Trois prélèvements simultanés : loyer (15 000 €), AWS (23 000 €), salaires (287 000 €). Le virement client de 45 000 € n'est pas arrivé. Le BFR t'a rattrapé. Tu appelles Mathieu : messagerie. Antoine : messagerie. Hugo : afterwork. Tu es seul, un vendredi soir, avec une trésorerie négative et des salaires à couvrir lundi.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Vendredi 22h : tu négoces un découvert depuis ton canapé, en pyjama. 35 minutes d'attente BNP, 4 transferts. "Vous n'avez pas de découvert autorisé ?" Non, personne n'y a pensé. Il demande 3 bilans. Tu en as un et demi. Tu fais un prévisionnel en 45 minutes sur ton canapé avec un verre de Bordeaux. Il accepte 30 000 € temporaires sur 5 jours. Tu te jures : 1) un outil de prévision de trésorerie, et 2) ne plus jamais négocier en pyjama.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Samedi 14h : tu appelles les 3 plus gros clients. Un samedi. Le premier directeur financier : "Vous m'appelez un samedi pour une facture ?" "Oui, parce que c'est urgent." Virement promis lundi. Le deuxième ne décroche pas. Le troisième, une responsable achats : "On a 60 jours, c'est dans le contrat." "Je sais. Mais si vous pouvez exceptionnellement..." "Non." Tu te reconnais dans ce "non". Tu te fais un café. Tu attends lundi.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Lundi 8h01 : le virement arrive. Tu respires pour la première fois en 62 heures. Au bureau depuis 7h30. Qonto rafraîchi toutes les 30 secondes. 8h01 : +45 000 €. Solde : +41 752,82 €. Tu t'affaisses dans ta chaise. Tu passes la matinée sur un outil de prévision à 13 semaines. Alertes à 100K, 50K, 20K. Ligne de découvert 150K avec la BNP (en costume cette fois). Règle d'or : toujours 2 mois de salaires en trésorerie. Mathieu : "Ton week-end ?" "Tranquille."
EOF
)"

git checkout main

# === BRANCH: hotfix/controle-fiscal ===
git checkout -b hotfix/controle-fiscal $DIVERGE_FISCAL

git commit --allow-empty -m "$(cat <<'EOF'
3 semaines de préparation intense : tu reconstitues 3 ans de dossiers avec du scotch, des prières et un stagiaire. Tu réquisitionnes Théo (22 ans, M1 Dauphine, regrette son choix de stage). Ensemble : retrouver les justificatifs dans les mails, les drives, les poches de Hugo. Classer, réconcilier, vérifier les 6 freelances exclusifs (risque de requalification CDI). Régulariser les avantages en nature non déclarés. L'expert-comptable vient tous les soirs. Théo développe un tic nerveux et une addiction au Red Bull. Tu lui promets une bonne note de stage.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Jour J : l'inspectrice arrive, et elle ne sourit pas. Jamais. Madame Bernier. 55 ans, tailleur gris, lunettes rectangulaires, expression de juge international. Elle ne sourit ni au café, ni à la salle Mandela. Elle commence par les fiches de paie. Méthodique. Silencieuse. Une question toutes les 20 minutes, toujours la pire. "Forfaits téléphoniques sans justificatif ?" Tu dégaines ton dossier. "Vos freelances travaillent-ils pour d'autres clients ?" Tu transpires. "Ce MacBook à 4 300 €, c'est un avantage en nature non déclaré." Tu le savais. Tu as provisionné.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le verdict : 34 000 € de redressement. Ça aurait pu être 10 fois pire. Après 4 jours : 12 000 € avantages en nature, 8 000 € frais sans justificatifs, 14 000 € cotisations freelances. Tu avais provisionné 50 000 €. C'est presque une victoire. Pas de requalification CDI (avenants signés in extremis). Pas de pénalités pour mauvaise foi. Madame Bernier : "C'est la première startup où les dossiers sont à peu près en ordre." Tu paies, tu corriges, tu ajoutes "survécu à un contrôle URSSAF" sur ton CV. Théo postule chez PwC. Tu ne lui en veux pas.
EOF
)"

git checkout main

# === BRANCH: hotfix/ceo-folie-depenses ===
git checkout -b hotfix/ceo-folie-depenses $DIVERGE_CEO_FOLIE

git commit --allow-empty -m "$(cat <<'EOF'
Le face-à-face : "Mathieu, 82 000 euros de meubles pendant un plan d'austérité, c'est un message intéressant." Il s'assoit dans son fauteuil Eames à 6 500 € : "C'est pour l'image. Quand les investisseurs viennent, il faut que ça envoie." "J'ai supprimé le café, les fruits, les team buildings. Les gens se plaignent sur Glassdoor. Et toi, 82 000 € en meubles design sans me prévenir." "C'est de l'investissement en image de marque." "C'est une charge, Mathieu. Et le ROI d'un fauteuil Eames sur la conversion d'un VC est exactement de zéro." "OK. Next time je te préviens." C'est pas suffisant, mais c'est un début.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'inventaire des folies passées : ce n'est pas la première fois. Un photobooth à 8 500 € pour la Christmas party (utilisé une fois). Une œuvre d'art à 12 000 € — une toile noire avec un point blanc (Antoine jure que c'est son écran de veille). Un club privé à 6 000 €/an (Mathieu y est allé deux fois). Un drone DJI à 3 800 € — dans un placard, personne n'a la licence, seule vidéo : plan flou du rooftop filmé par Hugo après 3 mojitos. Total achats impulsifs sur 2 ans : 194 000 €.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La "clause CEO" : un plafond de dépenses pour le fondateur. Tu présentes au board (en copie Balderton) : tout achat >10 000 € nécessite l'accord du board. Les dépenses CEO soumises aux mêmes règles. Budget représentation : 15 000 €/an CEO, 5 000 €/an VP. Le partner valide instantanément : "On devrait avoir ça partout." Mathieu serre les dents. En sortant : "Tu m'as piégé." "Non, je t'ai protégé. Un CEO qui claque l'argent des investisseurs sans contrôle, c'est un CEO qui se fait virer." Il ne répondra plus jamais à un devis de 82 000 € sans ton accord. Victoire silencieuse.
EOF
)"

git checkout main

# === BRANCH: fix/transformation-cfo ===
git checkout -b fix/transformation-cfo $DIVERGE_TRANSFO

git commit --allow-empty -m "$(cat <<'EOF'
Tu réalises que dire "non" ne suffit plus. Il faut dire "voilà comment". Un soir, seul dans l'open space. Les néons roses disent "Move Fast & Break Things". En un an, tu as dit non à tout : café, meubles, recrutements, outils, team buildings. Tu as sauvé la boîte. Mais tu n'as rien construit. Tu es le gardien du temple, pas l'architecte. Le vrai rôle d'un CFO, ce n'est pas le contrôleur de gestion en chef — c'est le copilote stratégique. Celui qui dit : "Non, pas comme ça. Mais voilà comment." Tu ouvres ton carnet et tu écris un plan.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu apprends à parler "produit", "tech" et "growth". Tu assistes aux démos, tu lis la documentation. Antoine : "Qu'est-ce que tu fous au sprint review ?" "Je veux comprendre ce qu'on construit pour mieux le financer." Tu poses des questions. Des bonnes. "Si on réduit le temps de réponse de l'API, quel impact sur le churn ?" Tu participes aux réunions growth. Tu découvres la "payback period" — la même logique que le ROI, juste un vocabulaire différent. Tu crées un modèle qui lie métriques produit et projections de revenus. Pour la première fois, tech et finance parlent le même langage.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu proposes un investissement de 400 000 € dans le produit. Oui, tu proposes de DÉPENSER. L'impensable : ton modèle montre que chaque euro investi dans la réduction du churn rapporte 3,2 € de LTV. Tu présentes le business case : hypothèses, scénarios, sensibilité, point mort. Le partner Balderton : "C'est exactement ce qu'on attend d'un CFO. Pas un cost-cutter, un value-creator." Mathieu : "C'est TOI qui proposes de dépenser ?" "Je propose d'investir. Dépenser et investir, c'est pas pareil." Hugo : "Donc je peux avoir mon week-end à Ibiza ?" "Non, Hugo. Non."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le DAF qui disait non devient le CFO qui dit "oui, si...". Un an et demi après, tu n'es plus le même. Toujours les chemises Oxford, toujours les tableaux de réconciliation. Mais tu es passé de "non" à "oui, si". "Oui, on recrute 10 personnes, SI le unit economics est positif à 12 mois." "Oui, on investit dans l'IA, SI on a un POC validé par 3 clients." Le "si" est ton superpouvoir. Chez PwC, tu comptais les erreurs. Chez FlashScale, tu construis le futur. Mathieu te propose le titre de CFO. Tu acceptes. Tu commandes des cartes de visite. Sans fauteuil Eames.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Fin alternative : le DAF devient entrepreneur. Il lance sa propre startup... de gestion financière. Le plot twist : après 2 ans, tu réalises que le chaos financier des scale-ups est universel. Chaque startup a le même Excel de 47 Mo, les mêmes notes de frais délirantes. Tu quittes FlashScale (Mathieu pleure, Hugo est soulagé, Antoine te serre la main). Tu lèves 2 millions pour "NoDAF" — CFO-as-a-service propulsé par l'IA. L'ironie totale : le DAF anti-tech devenu entrepreneur tech. Mathieu est ton premier client. Hugo passe une note de frais via la plateforme — rejetée en 0,3 seconde. L'algorithme dit non, lui aussi.
EOF
)"

git checkout main

# === BRANCH: fix/retour-big4 ===
git checkout -b fix/retour-big4 $DIVERGE_RETOUR

git commit --allow-empty -m "$(cat <<'EOF'
Le déjeuner avec ton ancien collègue PwC : "Tu bosses dans une startup ? Condoléances." Restaurant quartier Défense. Nappe blanche, carte des vins de 6 pages — l'opposé du food truck végan de Camille. Alexandre, associé depuis 2 ans, raconte : portfolio CAC40, processus de 200 pages, équipe de 35, IFRS. Chaque mot est une berceuse. "Et toi ?" Tu racontes : un CEO qui veut mettre la tréso en crypto, un Uber à 340 € pour le padel, un stagiaire qui pleure. Alexandre : "Reviens. On a un poste. Les chiffres sont propres. Les gens portent des chaussures fermées." Tu commandes un deuxième Sancerre.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le déclic : le jour où Hugo te dit d'"être plus startup". COMEX mardi. Mathieu veut pivoter — encore. Tu demandes le business case. "On le fera après." Le budget. "On verra." L'impact cash. "T'es trop process, bro, sois plus startup." Ces trois mots résonnent. Tu n'es pas startup. Tu ne le seras jamais. Tu es un homme qui a passé 8 ans à apprendre que les chiffres ont un sens et que "on verra" n'est pas un plan financier. Tu as essayé. Tu as sauvé cette boîte. Mais tu ne seras jamais celui qui dit "on verra". Et peut-être que c'est OK.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La démission : ta lettre est posée avec la même rigueur que tes bilans. Une page. Claire, concise, factuelle. Mathieu la lit. "T'es sérieux ?" "Oui." "C'est à cause du 'sois plus startup' ?" "C'est à cause de tout et de rien. Je suis un très bon DAF. Mais je suis un DAF de grande entreprise perdu dans une startup. J'ai fait ce que je pouvais." "Tu as sauvé la boîte." "Oui. Et quelqu'un d'autre la fera grandir." Il ne te retient pas. Pour la première fois, vous vous comprenez vraiment.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Retour chez PwC : ERP SAP, processus de 200 pages, bonheur. Tour Crystal, La Défense. Moquette grise, néons blancs, zéro slogan. Café mauvais mais gratuit. Premier dossier : due diligence d'une scale-up en Series B. Data room : Excel de 53 Mo, factures non classées, CEO qui jure que le CA va tripler. Tu souris. Tu connais cette histoire par cœur. "Bienvenue chez PwC. C'est très structuré ici." Tu hoches la tête. Oui. C'est exactement ce qu'il te faut. Un monde où les chiffres ont du sens. Tu ouvres ton tableur. Tu es chez toi.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Épilogue : 6 mois plus tard, Mathieu écrit. FlashScale racheté par Dassault Systèmes. 18M€. "Le nouveau DAF (ex-KPMG) m'a dit que tes processus lui ont facilité la due diligence." Tu lis trois fois. 18 millions pour une boîte à 3,5 mois de runway quand tu as pris les commandes. Tu finis ta réconciliation bancaire (groupe CAC40, 4,7 milliards, tout carré). Puis tu réponds : "Félicitations. Et dis à Hugo que sa dernière note de frais aurait quand même été refusée." Tu retournes à ton tableur. Les colonnes sont alignées, les formules justes. Fin.
EOF
)"

git checkout main

# === BRANCH: fix/rachete-par-pe ===
git checkout -b fix/rachete-par-pe $DIVERGE_PE

git commit --allow-empty -m "$(cat <<'EOF'
La due diligence : pour une fois, c'est toi du bon côté de la table. Trois consultants Deloitte (pas PwC — tu es secrètement vexé). Ils veulent tout : 3 ans de comptes, contrats clients, projections, bridge de CA, cohortes, unit economics. Tu ouvres ta data room. Tout est là. Propre. Classé. Réconcilié. Regard surpris des auditeurs. Le lead : "C'est la data room la mieux organisée de l'année. Vous venez d'où ?" "PwC." "Ça se voit." Pour la première fois, être un ancien Big 4 dans une startup est un avantage compétitif.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La négo : 3 semaines à te battre sur chaque virgule du SPA. C'est ton moment. Garantie d'actif et de passif, earn-out, escrow, reps & warranties. Mathieu : "C'est quoi une MAC clause ?" "Si un événement négatif survient avant le closing, ils se retirent." "Genre ?" "Genre si Hugo passe une note de frais de 340 000 €." Prix négocié : 62 millions. Mathieu à 35% post-dilution : 21,7 millions. Balderton fait x4. Toi : 1,5% en BSPCE, exercés à 0,50 €. Plus-value : 930 000 € bruts. Ton meilleur bonus PwC : 18 000 €. Tu t'assois dans la salle Mandela et tu fixes le mur 10 minutes.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Closing day : tu vérifies le virement au centime près. Évidemment. Vendredi. 6 avocats à 800 €/h (tu calcules). Le virement part du compte séquestre. Tu vérifies chaque centime : fondateurs, investisseurs, pool BSPCE, escrow. Tout colle. À l'euro près. Mathieu ouvre le Dom Pérignon (280 € — cette fois, c'est justifié). "À Kevin, le DAF qui dit toujours non. Sans lui, on serait morts." L'open space applaudit. Hugo a les larmes aux yeux. Antoine te tape dans le dos. Camille te serre dans ses bras. Tu ne sais pas quoi faire de tes bras — les câlins ne sont pas dans le référentiel PwC.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Épilogue : tu restes 6 mois pour la transition, puis tu pars. Avec 930K€ et la certitude que "non" est le mot le plus rentable du dictionnaire. Le CFO Ardian (ex-Danone, costard impeccable, tu l'adores) reçoit tes dossiers et tes notes : "Hugo : vérifier TOUTES les notes de frais", "Antoine : surveiller les side projects", "Mathieu : ne JAMAIS le laisser signer seul un contrat >10K". Dernier jour. Même coin de table entre le café et le baby-foot. Le néon dit toujours "Move Fast & Break Things". Mais FlashScale construit, croît, gagne de l'argent. Tu montes dans ta 308 (toujours la même — 930K€ mais tu n'es pas du genre à flamber). Le DAF qui disait toujours non a dit oui à la meilleure aventure de sa vie. Fin.
EOF
)"

git checkout main

# === BRANCH: feature/crypto-tresorerie ===
git checkout -b feature/crypto-tresorerie $DIVERGE_CRYPTO

git commit --allow-empty -m "$(cat <<'EOF'
"Et si on mettait 20% de la tréso en Bitcoin ?" demande Mathieu avec le plus grand sérieux. Lundi 9h15. Oat milk latte. "On a 1,2 million qui dort à 0%. Faut mettre 20% en Bitcoin." Tu attends le sourire. Il ne vient pas. "240 000 € de trésorerie d'entreprise dans la crypto la plus volatile du marché ?" "C'est cyclique. MicroStrategy l'a fait. Tesla l'a fait." "Tesla a perdu 140 millions dessus." "Oui mais après ils ont regagné." Ton oeil gauche tressaute. Tu écris en majuscules dans ton carnet : NON.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mathieu revient avec un "whitepaper" de 3 pages en Comic Sans par @CryptoKevin. 23 ans, "serial entrepreneur" (boutique Shopify de t-shirts crypto), 14 000 followers. "Projections" : +300% en 18 mois. "Mathieu, ce n'est pas un whitepaper. C'est un thread Twitter imprimé." "T'es fermé d'esprit." "Je suis DAF. C'est littéralement mon métier d'être fermé aux idées qui perdent de l'argent."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'expert-comptable et l'avocat te regardent comme si tu avais perdu la tête. L'expert-comptable : "Comptablement, c'est un cauchemar. Actifs incorporels, valorisation à la juste valeur, P&L illisible." L'avocate fiscaliste (ex-PwC) : "Plus-values à 30% flat tax, moins-values non déductibles sauf même nature, et bonne chance pour expliquer à l'inspectrice que l'Ethereum c'est de la gestion normale." Tu présentes à Mathieu. "C'est des vieux qui comprennent pas." L'expert-comptable a 38 ans. L'avocate 35. Tu passes au compromis.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le compromis : 5 000 € de "test". Le Bitcoin perd 18% en 3 jours. Après 2 semaines de harcèlement, tu cèdes sur 5 000 €. Coinbase Business, conformité vérifiée. 5 000 € de Bitcoin à 42 300 €. Trois jours plus tard : crash à 34 700 €. Perte : 900 €. Mathieu : "C'est normal, faut HODL." "On a perdu 18% en 72h, le Livret A fait 3%." Tu vends. Perte : 847 €. Tu la comptabilises en "charges exceptionnelles — éducation du CEO".
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Fin alternative : Mathieu investit en secret 100 000 € en Ethereum. Tu fais un AVC métaphorique. En réconciliant les comptes, un virement de 100 000 € vers "Binance Europe SA", classé "prestation de conseil technologique". Ton cerveau court-circuite. 100 000 € de tréso en crypto sans accord du DAF, du board, ni base légale. L'Ethereum a perdu 31%. Perte latente : 31 000 €. Tu convoques les investisseurs. La confiance est brisée. Ce que tu retiens : quand le CEO veut vraiment faire une connerie, il la fait. Avec ou sans toi.
EOF
)"

git checkout main

# ============================================================
echo ""
echo "================================================"
echo "  Livre généré avec succès !"
echo "  $(git log --oneline --all | wc -l) commits au total"
echo "  $(git branch | wc -l) branches"
echo "================================================"
echo ""
git log --oneline --all --graph | head -40

$SCOPE="web"
$APP=$FALSE
$DRYRUN=$FALSE
$ASSETS=$TRUE

if ($DRYRUN) {
  $DRYRUN="--dry-run"
} else {
  $DRYRUN=""
}

$LIBS="src/lib"

# Data Access lib
$TYPE="data-access"
$FOLDER="./libs/$SCOPE/$TYPE/$LIBS"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE, $TYPE, lib --no-interactive $DRYRUN

if (!$DRYRUN) {
  New-Item -ItemType "directory" -Path "$FOLDER/models"
  New-Item -Path "$FOLDER/models" -Name "index.ts" -ItemType "file"
  New-Item -ItemType "directory" -Path "$FOLDER/models/dto"
  New-Item -Path "$FOLDER/models/dto" -Name "index.ts" -ItemType "file"
  New-Item -ItemType "directory" -Path "$FOLDER/models/enum"
  New-Item -Path "$FOLDER/models/enum" -Name "index.ts" -ItemType "file"
  New-Item -ItemType "directory" -Path "$FOLDER/api"
  New-Item -Path "$FOLDER/api" -Name "index.ts" -ItemType "file"
  New-Item -ItemType "directory" -Path "$FOLDER/mappers"
  New-Item -Path "$FOLDER/mappers" -Name "index.ts" -ItemType "file"
}

# Extensions lib
$TYPE="extensions"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Animations lib
$TYPE="animations"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Guards lib
$TYPE="guards"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# App-config lib
$TYPE="app-config"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# i18n lib
$TYPE="i18n"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Services lib
$TYPE="services"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Intercepers lib
$TYPE="intercepters"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Directives lib
$TYPE="directives"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Ui lib
$TYPE="ui"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Components lib
$TYPE="components"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Layouts lib
$TYPE="layouts"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Pipes lib
$TYPE="pipes"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

# Utils lib
$TYPE="utils"
ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

if ($ASSETS) {
  # Assets lib
  $TYPE="assets"
  ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN
}

if ($APP) {
  # Assets lib
  $TYPE="data"
  ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --tags=$SCOPE,$TYPE,lib --no-interactive $DRYRUN

  # Pages lib
  $TYPE="pages"
  ng generate @nrwl/angular:library --name=$TYPE --directory=$SCOPE --importPath=@$SCOPE/$TYPE --lazy --routing --tags=$SCOPE,$TYPE,lib,pages --no-interactive $DRYRUN
}

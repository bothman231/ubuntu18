echo "every script"

typeset -a REQ_ENV_VARS
REQ_ENV_VARS[0]=FNCSERVER3_PASSWORD
REQ_ENV_VARS[1]=FNCSERVER5_PASSWORD

echo FNCSERVER3_PASSWORD=${FNCSERVER3_PASSWORD}

every_script_start()
{
   echo "every_script_start"
   ENV_VAR=${REQ_ENV_VARS[1]}
   echo "ENV_VAR=${ENV_VAR}"

#  if [ -z ${FNCSERVER5_PASSWORD} ]; then

   if [ -z ${ENV_VAR} ]; then
      echo "is not set"
   else
      echo "is set"
   fi
}

every_script_end()
{
   echo "every_script_end"
}



if [ ${{ steps.latest_tag.outputs.tag }} != tag-unavailable ] && \
  ( \
    [ ${{ steps.changed_files.outputs.any_modified }} == true ] || \
    [ ${{ github.event_name }} == workflow_dispatch ] \
  );
then
  echo "::set-output name=run_docker_build::true"
  echo "::debug::Docker build will carry out as expected."
else
  echo "::set-output name=run_docker_build::false"
  echo "::debug::Docker build is cancelled as none of the watched files have been changed."
  echo "Docker build is cancelled as none of the watched files have been changed."
fi

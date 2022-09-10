image_name=${{ secrets.DOCKERHUB_USERNAME }}/${{ env.CONTAINER_NAME }}
repo_tag=${{ steps.latest_tag.outputs.tag }}
image_tag=${repo_tag//\//-}
image_ref="${image_name}:${image_tag}"
short_image_ref="${{ env.CONTAINER_NAME }}:${image_tag}"

echo "::set-output name=image-name::$image_name"
echo "::set-output name=image-tag::$image_tag"
echo "::set-output name=image-ref::$image_ref"
echo "::set-output name=short-image-ref::$short_image_ref"

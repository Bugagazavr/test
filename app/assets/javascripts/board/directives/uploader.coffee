angular.module('board')
  .directive 'uploader', ['images', (images) ->
    return {
      restrict: 'A',
      link: (scope, element, attrs) ->
        element.on 'change', (e) ->
          for file in e.target.files
            images.create(file).then (response) ->
              if response.status == 200 && response.data.picture != undefined
                scope.images.push(response.data.picture.url)
                scope.form.announcement_images_attributes[Date.now()] = { image_id: response.data.id }
    }]

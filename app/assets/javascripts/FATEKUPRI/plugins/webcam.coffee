FATEKUPRI.namespace 'Webcam', (() ->
  return {
    openTakePictureModal: (object_id)->
      Webcam.set({
          width: 320,
          height: 240,
          image_format: 'jpeg',
          jpeg_quality: 90
      })

      modal_script = '<div class="modal fade remove-on-close" id="takeImageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">

            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Take Image</h4>
            </div>

            <div class="modal-body">
              <div class="row">
                <div class="col-xs-12 text-center">
                  <div style="display: inline-block;" class="m-b-lg">
                    <div id="my_camera" data-camera-take></div>
                  </div>
                  <br>
                  <span class="btn btn-success" data-target-result=".results_'+object_id+'" data-target-input=".camera_input_'+object_id+'" id="button_camera_'+object_id+'" onClick=PHYSIALITY.Webcam.takePicture("#button_camera_'+object_id+'")><i class="fa fa-camera"></i> Take Photo</span>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>';

      $('body').append(modal_script);
      $('#takeImageModal').modal('show').on('hidden.bs.modal', ->
        PHYSIALITY.Webcam.removeTakePicture()
        )
      Webcam.attach("#my_camera")

    # taking image from camera
    takePicture: (buttonCameraTake)->
      Webcam.snap (data_uri) ->
        buttonCameraTake = $(buttonCameraTake)
        targetResult = $(buttonCameraTake.data('target-result'))
        targetInput = $(buttonCameraTake.data('target-input'))

        targetInput.val(data_uri)
        targetResult.attr('src', data_uri)
        $('#takeImageModal').modal('hide')

    #untake picture
    removeTakePicture: ->
      if Webcam.live
        Webcam.reset()

    checkSupport: ->
      if !Webcam.isSupport()
        $('.takeImage').remove()
  }
)(jQuery)

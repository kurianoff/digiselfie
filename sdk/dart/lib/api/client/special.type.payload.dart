class SpecialTypePayload {
  String contentType;
  Object data;

  SpecialTypePayload(this.contentType, this.data) :
        assert(!(data is SpecialTypePayload));
}
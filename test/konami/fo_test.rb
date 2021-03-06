require "minitest_helper"

describe Konami::Fo do
  before do
    @subject = Konami::Fo
    @konamio_params = {
      input:    @input            = MiniTest::Mock.new,
      output:   @output           = MiniTest::Mock.new,
      prompt:   @prompt           = "Foo diddly doobardy party hardy",
      listener: @listener         = MiniTest::Mock.new,
      speaker:  @speaker          = MiniTest::Mock.new,
      sequence: @sequence         = ["a"],
      confirmation: @confirmation = "Good job, you."
    }

    @speaker_instance = MiniTest::Mock.new
    @speaker_result   = MiniTest::Mock.new
    @speaker_instance.expect(:execute!, @speaker_result)
    @speaker_instance.expect(:execute!, @speaker_result)

    @listener_instance = MiniTest::Mock.new
    @listener_result   = MiniTest::Mock.new
    @listener_instance.expect(:execute!, @listener_result)
    @listener_instance.expect(:execute!, @listener_result)

    @speaker.expect(:new,  @speaker_instance,  [{ prompt: @prompt, output: @output }])
    @listener.expect(:new, @listener_instance, [{ sequence: @sequence, input: @input }])
    @data_hash = MiniTest::Mock.new
    @listener_result.expect(:data, @data_hash)
    @data_hash.expect(:[], ["a"], [:sequence])

    @speaker.expect(:new,  @speaker_instance,  [{ prompt: @prompt, output: @output }])
    @listener.expect(:new, @listener_instance, [{ sequence: @sequence, input: @input }])
    @data_hash = MiniTest::Mock.new
    @listener_result.expect(:data, @data_hash)
    @data_hash.expect(:[], [], [:sequence])

    @speaker_confirmation_instance = MiniTest::Mock.new
    @speaker_confirmation_result = MiniTest::Mock.new
    @speaker.expect(:new, @speaker_confirmation_instance, [{ prompt: @confirmation, output: @output }])
    @speaker_confirmation_instance.expect(:execute!, @speaker_confirmation_result)
  end

  it "can be initialized" do
    @subject.must_respond_to :new
  end

  it "can be initialized without arguments" do
    @subject.new().must_respond_to :execute!
  end

  it "must return a result object" do
    assert @subject.new(konamio_params: @konamio_params).execute!.successful?
  end
end

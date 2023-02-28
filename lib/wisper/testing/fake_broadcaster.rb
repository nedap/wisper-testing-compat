module Wisper
  class Testing
    class FakeBroadcaster
      def broadcast(_listener, _publisher, _event, *_args, **_kwargs)
        # no-op
      end
    end
  end
end

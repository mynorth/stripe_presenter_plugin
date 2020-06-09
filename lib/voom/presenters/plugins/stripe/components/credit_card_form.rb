require 'voom/presenters/dsl/components/event_base'

module Voom
  module Presenters
    module Plugins
      module Stripe
        module Components
          class CreditCardForm < DSL::Components::EventBase

            attr_reader :stripe_publishable_key, :client_secret, :payment_intent_id, :tag

            def initialize(stripe_publishable_key, client_secret, payment_intent_id, **attribs, &block)
              @stripe_publishable_key = stripe_publishable_key
              @client_secret = client_secret
              @payment_intent_id = payment_intent_id
              @tag = attribs.fetch(:tag, nil)
              super(type: :stripe_credit_card_form, **attribs, &block)
              expand!
            end
          end
        end
      end
    end
  end
end
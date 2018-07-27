module CurrentCart private
  def set_cart
    Rails.logger.debug 'set_cart looking for cart:' + session[:cart_id].to_s
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
    Rails.logger.debug 'set_cart created cart cart:' + @cart.id.to_s
  end
end

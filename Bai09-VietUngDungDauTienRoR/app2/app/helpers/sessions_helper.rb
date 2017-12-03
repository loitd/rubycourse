module SessionsHelper
	# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    # dấu or equal -> a = a || b <-> a ||= b
    # Ý nghĩa: nếu a = nil thì gán a = b còn không thì thôi
    # puts @current_user
    return @current_user
  end

  def log_out
  	session.delete(:user_id)
    @current_user = nil
  end

  def fillnav
  	# puts @current_user
  	if !current_user.nil?
  		raw('
  			<!-- Thêm dropdown menu -->
          	<li role="presentation" class="dropdown">
    		    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
    		      	<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users 
    		      	<span class="caret"></span>
    		    </a>
    		    <ul class="dropdown-menu">
    		    	<!-- Đường dẫn đến trang đăng ký -->      
              		<li><a href="/users/' + @current_user.id.to_s + '">Thông tin tài khoản</a></li>
              		<li><a data-method="delete" href="/logout">Đăng xuất</a></li>
    		    </ul>
    		</li>')
  	else
  		'<!-- Thêm dropdown menu -->
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
              	<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              	<!-- Đường dẫn đến trang đăng ký -->      
              	<li><a href="/signup">Đăng ký</a></li>
              	<li><a href="/login">Đăng nhập</a></li>
            </ul>
        </li>'.html_safe
  	end
  end

  def hihi
  	"I am the f@cking you want"
  end
end
